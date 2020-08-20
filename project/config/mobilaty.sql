-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 20, 2020 at 10:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mobilaty`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`) VALUES
(3, 'AT&T'),
(4, 'Acer'),
(5, 'Allview'),
(6, 'Amazon'),
(7, 'Amoi'),
(8, 'Apple'),
(9, 'Archos'),
(10, 'Asus'),
(11, 'BLU'),
(12, 'BQ'),
(13, 'BenQ'),
(14, 'BenQ-Siemens'),
(15, 'Benefon'),
(16, 'Bird'),
(17, 'BlackBerry'),
(18, 'Bosch'),
(19, 'Casio'),
(20, 'Cat'),
(21, 'Celkon'),
(22, 'Chea'),
(23, 'Coolpad'),
(24, 'Dell'),
(25, 'Emporia'),
(26, 'Energizer'),
(27, 'Ericsson'),
(28, 'Eten'),
(29, 'Fujitsu Siemens'),
(30, 'Garmin-Asus'),
(31, 'Gigabyte'),
(32, 'Gionee'),
(33, 'Google'),
(34, 'HP'),
(35, 'HTC'),
(36, 'Haier'),
(37, 'Huawei'),
(38, 'Icemobile'),
(39, 'Innostream'),
(40, 'Intex'),
(41, 'Jolla'),
(42, 'Karbonn'),
(43, 'Kyocera'),
(44, 'LG'),
(45, 'Lava'),
(46, 'LeEco'),
(47, 'Lenovo'),
(48, 'MWg'),
(49, 'Maxon'),
(50, 'Maxwest'),
(51, 'Meizu'),
(52, 'Micromax'),
(53, 'Microsoft'),
(54, 'Mitac'),
(55, 'Mitsubishi'),
(56, 'Modu'),
(57, 'Motorola'),
(58, 'NEC'),
(59, 'NIU'),
(60, 'Neonode'),
(61, 'Nokia'),
(62, 'Nvidia'),
(63, 'O2'),
(64, 'OnePlus'),
(65, 'Oppo'),
(66, 'Orange'),
(67, 'Palm'),
(68, 'Panasonic'),
(69, 'Pantech'),
(70, 'Parla'),
(71, 'Philips'),
(72, 'Plum'),
(73, 'Posh'),
(74, 'Prestigio'),
(75, 'QMobile'),
(76, 'Qtek'),
(77, 'Sagem'),
(78, 'Samsung'),
(79, 'Sendo'),
(80, 'Sewon'),
(81, 'Sharp'),
(82, 'Siemens'),
(83, 'Sonim'),
(84, 'Sony'),
(85, 'Sony Ericsson'),
(86, 'Spice'),
(87, 'T-Mobile'),
(88, 'Tel.Me.'),
(89, 'Telit'),
(90, 'Thuraya'),
(91, 'Toshiba'),
(92, 'Unnecto'),
(93, 'VK Mobile'),
(94, 'Vertu'),
(95, 'Vodafone'),
(96, 'WND'),
(97, 'Wiko'),
(98, 'XCute'),
(99, 'XOLO'),
(100, 'Xiaomi'),
(101, 'YU'),
(102, 'Yezz'),
(103, 'Yota'),
(104, 'ZTE'),
(105, 'alcatel'),
(106, 'i-mate'),
(107, 'i-mobile'),
(108, 'iNQ'),
(109, 'verykool'),
(110, 'vivo');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `comment_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `comment_body` varchar(45) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`comment_id`, `post_id`, `comment_body`, `user_id`) VALUES
(12, 2, 'hiiiiiii', 57),
(13, 2, 'hiiiiiii', 57),
(14, 2, 'hiiiiiii', 57),
(15, 2, 'hiiiiiii', 57),
(16, 2, 'hiiiiiii', 57),
(17, 2, 'hiiiiiii', 57),
(18, 2, 'hiiiiiii', 57),
(19, 2, 'hiiiiiii', 57);

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE `mobile` (
  `mobile_id` int(11) NOT NULL,
  `mobile_name` varchar(255) DEFAULT NULL,
  `category_name` varchar(50) DEFAULT NULL,
  `display_size` varchar(255) DEFAULT NULL,
  `main_camera` varchar(255) DEFAULT NULL,
  `selfie_camera` varchar(255) DEFAULT NULL,
  `chipset` varchar(255) DEFAULT NULL,
  `storage_and_ram` varchar(255) DEFAULT NULL,
  `battary` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `network_technology` varchar(255) DEFAULT NULL,
  `2G_bands` varchar(255) NOT NULL,
  `3G_bands` varchar(255) NOT NULL,
  `4G_bands` varchar(250) DEFAULT NULL,
  `network_speed` varchar(255) DEFAULT NULL,
  `GPRS` varchar(255) DEFAULT NULL,
  `EDGE` varchar(255) DEFAULT NULL,
  `announced` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `dimentions` varchar(255) DEFAULT NULL,
  `weight_g` varchar(255) DEFAULT NULL,
  `weight_oz` varchar(255) DEFAULT NULL,
  `SIM` varchar(255) DEFAULT NULL,
  `display_type` varchar(255) DEFAULT NULL,
  `display_resolution` varchar(255) DEFAULT NULL,
  `OS` varchar(255) DEFAULT NULL,
  `CPU` varchar(255) DEFAULT NULL,
  `GPU` varchar(255) DEFAULT NULL,
  `memory_card` varchar(255) DEFAULT NULL,
  `internal_memory` varchar(255) DEFAULT NULL,
  `RAM` varchar(255) DEFAULT NULL,
  `loud_speaker` varchar(255) DEFAULT NULL,
  `audio_jack` varchar(255) DEFAULT NULL,
  `WLAN` varchar(255) DEFAULT NULL,
  `bluetooth` varchar(255) DEFAULT NULL,
  `GPS` varchar(255) DEFAULT NULL,
  `NFC` varchar(255) DEFAULT NULL,
  `radio` varchar(255) DEFAULT NULL,
  `USB` varchar(255) DEFAULT NULL,
  `sensors` varchar(255) DEFAULT NULL,
  `colors` varchar(255) DEFAULT NULL,
  `approx_price_EUR` varchar(255) DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobile`
--

INSERT INTO `mobile` (`mobile_id`, `mobile_name`, `category_name`, `display_size`, `main_camera`, `selfie_camera`, `chipset`, `storage_and_ram`, `battary`, `price`, `network_technology`, `2G_bands`, `3G_bands`, `4G_bands`, `network_speed`, `GPRS`, `EDGE`, `announced`, `status`, `dimentions`, `weight_g`, `weight_oz`, `SIM`, `display_type`, `display_resolution`, `OS`, `CPU`, `GPU`, `memory_card`, `internal_memory`, `RAM`, `loud_speaker`, `audio_jack`, `WLAN`, `bluetooth`, `GPS`, `NFC`, `radio`, `USB`, `sensors`, `colors`, `approx_price_EUR`, `img_url`) VALUES
(22, 'Iconia Talk S', 'Acer', '720 x 1280 pixels (~210 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT8735', '[\'16GB\', \'2GB\', \'RAM,\', \'32GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 3400 mAh battery (12.92 Wh)', '[\'About\', \'100\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', 'HSDPA 850 / 1900 / 2100 ', 'LTE band 1(2100)| 3(1800)| 7(2600)| 8(900)| 20(800)', 'HSPA 42.2/11.5 Mbps  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2016  August', 'Available. Released 2016  October', '191.7 x 101 x 9.4 mm (7.55 x 3.98 x 0.37 in)', '260', '9.17', 'Dual SIM (Micro-SIM/Nano-SIM)', 'IPS LCD capacitive touchscreen  16M colors', '7.0 inches (~69.8% screen-to-body ratio)', 'Android 6.0 (Marshmallow)', 'Quad-core 1.3 GHz Cortex-A53', 'Mali-T720MP2', 'microSD  up to 128 GB (dedicated slot)', '16/32 GB', '2 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 a/b/g/n| Wi-Fi Direct| hotspot', '4.0| A2DP', 'Yes with A-GPS GLONASS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Black', '170.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-talk-s.jpg'),
(23, 'Liquid Z6 Plus', 'Acer', '1080 x 1920 pixels (~401 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'AF\']', '[\'Single\', \'5\', \'MP\']', 'Mediatek MT6753', '[\'32GB\', \'3GB\', \'RAM\']', 'Removable Li-Po 4080 mAh battery', '[\'About\', \'120\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA 42.2/5.76 Mbps  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2016  August', 'Available. Released 2016  December', '153.8 x 75.6 x 8.5 mm (6.06 x 2.98 x 0.33 in)', '169', '5.96', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.5 inches (~71.7% screen-to-body ratio)', 'Android 6.0 (Marshmallow)', 'Octa-core 1.3 GHz Cortex-A53', 'Mali-T720MP3', 'microSD  up to 256 GB (uses SIM 2 slot)', '32 GB', '3 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| Wi-Fi Direct| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Fingerprint (front-mounted)| accelerometer| proximity', 'Black| White', '250.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z6-plus.jpg'),
(24, 'Liquid Z6', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6737', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Ion 2000 mAh battery', 'None', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2016  August', 'Available. Released 2016  December', '-', 'None', 'None', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches', 'Android 6.0 (Marshmallow)', 'Quad-core 1.25 GHz Cortex-A53', 'Mali-T720MP2', 'microSD  up to 256 GB', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Black| White', '120.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z6.jpg'),
(25, 'Iconia Tab 10 A3-A40', 'Acer', '1920 x 1200 pixels (~224 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT8163A', '[\'16GB\', \'2GB\', \'RAM,\', \'32GB\', \'2GB\', \'RAM,\', \'64GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion battery', '[\'About\', \'250\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2016  April', 'Available. Released 2016  June', '259 x 167 x 8.9 mm (10.20 x 6.57 x 0.35 in)', 'None', 'None', 'No', 'IPS LCD capacitive touchscreen  16M colors', '10.1 inches (~68.4% screen-to-body ratio)', 'Android 6.0 (Marshmallow)', 'Quad-core 1.3 GHz Cortex-A53', 'Mali-T720 MP2', 'microSD  up to 256 GB (dedicated slot)', '16/32/64 GB', '2 GB RAM', 'Yes with stereo speakers (4 speakers)', 'Yes', 'Wi-Fi 802.11 a/b/g/n/ac| dual-band| hotspot', 'Yes', 'None', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Black', '230.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-tab-10-a3-a40.jpg'),
(26, 'Liquid X2', 'Acer', '720 x 1280 pixels (~267 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'f/1.8,\', \'AF\']', '[\'Single\', \'13\', \'MP,\', \'f/1.8,\', \'AF\']', 'Mediatek MT6753', '[\'32GB\', \'3GB\', \'RAM\']', 'Removable Li-Po 4020 mAh battery', '[\'About\', \'260\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 ', 'HSDPA 900 / 1900 / 2100 - Europe| Taiwan', ' LTE 800 / 1800 / 2100 / 2600 - Europe', 'HSPA 42.2/5.76 Mbps  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2015  April', 'Available. Released 2016  February', '153.3 x 78.8 x 8.5 mm (6.04 x 3.10 x 0.33 in)', '166', '5.86', 'Triple SIM (Micro-SIM)', 'IPS LCD capacitive touchscreen  16M colors', '5.5 inches (~69.0% screen-to-body ratio)', 'Android 5.1 (Lollipop)', 'Octa-core 1.3 GHz Cortex-A53', 'Mali-T720MP4', 'microSD  up to 32 GB (dedicated slot)', '32 GB', '3 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP| LE', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity| compass', 'Black| Gold', '230.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-x2-1.jpg'),
(27, 'Liquid Jade 2', 'Acer', '1080 x 1920 pixels (~401 ppi pixel density)', '[\'Single\', \'21\', \'MP,\', \'AF\']', '[\'Single\', \'8\', \'MP\']', 'Qualcomm MSM8992 Snapdragon 808', '[\'32GB\', \'3GB\', \'RAM\']', 'None', '[\'About\', \'180\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', 'HSDPA 900 / 2100 ', ' LTE', 'HSPA 42.2/5.76 Mbps  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2016  February', 'Available', '-', 'None', 'None', 'Dual SIM (Nano-SIM| dual stand-by)', 'Super AMOLED capacitive touchscreen  16M colors', '5.5 inches', 'Android 6.0 (Marshmallow)', 'Hexa-core (4x1.4 GHz Cortex-A53 & 2x1.8 GHz Cortex-A57)', 'None', 'microSD  up to 256 GB', '32 GB', '3 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 a/b/g/n/ac| dual-band| Wi-Fi Direct| hotspot', '4.0| A2DP| LE', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| gyro| proximity| compass', 'Black', 'None', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-jade-2.jpg'),
(28, 'Liquid Zest Plus', 'Acer', '720 x 1280 pixels (~267 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'PDAF,\', \'Laser\', \'AF\']', '[\'Single\', \'5\', \'MP\']', 'Mediatek MT6735', '[\'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 5000 mAh battery', '[\'About\', \'110\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2016  April', 'Available. Released 2016  July', '154 x 77 x 10 mm (6.06 x 3.03 x 0.39 in)', 'None', 'None', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.5 inches (~70.3% screen-to-body ratio)', 'Android 6.0 (Marshmallow)', 'Quad-core 1.3 GHz Cortex-A53', 'Mali-T720MP2', 'microSD (dedicated slot)', '16 GB', '2 GB RAM', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity| compass', 'Blue| White', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-zest-plus-z628.jpg'),
(29, 'Liquid Zest', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'f/2.0,\', \'AF\']', '[\'Single\', \'5\', \'MP\']', 'Mediatek MT6580 - Z525', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Ion 2000 mAh battery', 'None', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 850 / 900 / 1900 / 2100 ', ' LTE', 'HSPA  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2016  February', 'Available. Released 2016  April', '145.7 x 71.2 x 8.4 mm (5.74 x 2.80 x 0.33 in)', '125', '4.41', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~66.4% screen-to-body ratio)', 'Android 6.0 (Marshmallow)', 'Quad-core 1.3 GHz - Z525', 'Mali-400MP2 - Z525', 'microSD  up to 32 GB (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity| compass', 'Black| White', '110.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-zest.jpg'),
(30, 'Predator 8', 'Acer', '1920 x 1200 pixels (~283 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'2\', \'MP\']', 'Intel Atom x7-Z8700', '[\'32GB\', \'2GB\', \'RAM,\', \'64GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Po 4420 mAh battery', '[\'About\', \'100\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2015  September', 'Available. Released 2015  November', '217.9 x 127 x 8.6 mm (8.58 x 5.0 x 0.34 in)', '353.8', '12.49', 'No', 'IPS LCD capacitive touchscreen  16M colors', '8.0 inches (~67.1% screen-to-body ratio)', 'Android 5.0 (Lollipop)', 'Quad-core 1.6 GHz', 'None', 'microSD  up to 256 GB (dedicated slot)', '32/64 GB', '2 GB RAM', 'Yes with stereo speakers (4 speakers)', 'Yes', 'Wi-Fi 802.11 a/b/g/n', '4.0| A2DP| LE', 'None', 'None', 'No', 'microUSB 2.0', 'Yes', 'Black/Silver', '350.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-predator-8.jpg'),
(31, 'Liquid Jade Primo', 'Acer', '1080 x 1920 pixels (~401 ppi pixel density)', '[\'Single\', \'21\', \'MP,\', \'f/2.2,\', \'AF\']', '[\'Single\', \'8\', \'MP,\', \'f/2.2\']', 'Qualcomm MSM8992 Snapdragon 808', '[\'32GB\', \'3GB\', \'RAM\']', 'Non-removable Li-Po 2870 mAh battery', 'None', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', 'HSDPA 850 / 900 / 1900 / 2100 - Europe/ Taiwan', ' LTE 800 / 1800 / 2100 / 2600 - Europe', 'HSPA 42.2/5.76 Mbps  LTE-A (2CA) Cat6 300/50 Mbps', 'Yes', 'Yes', '2015  September', 'Available. Released 2016  April', '156.5 x 75.9 x 8.4 mm (6.16 x 2.99 x 0.33 in)', '150', '5.29', 'Dual SIM (Nano-SIM| dual stand-by)', 'AMOLED capacitive touchscreen  16M colors', '5.5 inches (~70.2% screen-to-body ratio)', 'Microsoft Windows 10', 'Hexa-core (4x1.4 GHz Cortex-A53 & 2x1.8 GHz Cortex-A57)', 'Adreno 418', 'microSD  up to 256 GB (uses SIM 2 slot)', '32 GB', '3 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 a/b/g/n/ac| dual-band| WiFi Direct| hotspot', '4.0| A2DP| LE| EDR', 'Yes with A-GPS', 'None', 'FM radio', '3.1| Type-C 1.0 reversible connector', 'Accelerometer| gyro| proximity| compass', 'Black', '220.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-jade-primo-.jpg'),
(32, 'Liquid Z330', 'Acer', '480 x 854 pixels (~218 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'5\', \'MP\']', 'Qualcomm MSM8909 Snapdragon 210', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Ion 2000 mAh battery', '[\'About\', \'90\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  October', '136 x 66.5 x 9.6 mm (5.35 x 2.62 x 0.38 in)', '142', '5.01', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '4.5 inches (~61.7% screen-to-body ratio)', 'Android 5.1 (Lollipop)', 'Quad-core 1.1 GHz Cortex-A7', 'Adreno 304', 'microSD (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Mystic Black| Pure White', '110.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z320-z330.jpg'),
(33, 'Liquid Z320', 'Acer', '480 x 854 pixels (~218 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Qualcomm MSM8909 Snapdragon 210', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Po 2000 mAh battery', '[\'About\', \'100\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', 'None', 'HSPA 42.2/5.76 Mbps', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  November', '136 x 66.5 x 9.6 mm (5.35 x 2.62 x 0.38 in)', '142', '5.01', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '4.5 inches (~61.7% screen-to-body ratio)', 'Android 5.1 (Lollipop)', 'Quad-core 1.0 GHz Cortex-A7', 'Adreno 304', 'microSD (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Pure White', '90.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z320-z330.jpg'),
(34, 'Liquid Z630S', 'Acer', '720 x 1280 pixels (~267 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'8\', \'MP\']', 'Mediatek MT6753', '[\'32GB\', \'3GB\', \'RAM\']', 'Removable Li-Po 4000 mAh battery (15.2 Wh)', '[\'About\', \'200\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 1900 / 2100 ', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  September', '156.3 x 77.5 x 8.9 mm (6.15 x 3.05 x 0.35 in)', '165', '5.82', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.5 inches (~68.8% screen-to-body ratio)', 'Android 5.1 (Lollipop)', 'Octa-core 1.3 GHz Cortex-A53', 'Mali-T720MP3', 'microSD (dedicated slot)', '32 GB', '3 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0| USB On-The-Go', 'Accelerometer| proximity| compass', 'Black| Gold', 'None', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z630.jpg'),
(35, 'Liquid Z630', 'Acer', '720 x 1280 pixels (~267 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'8\', \'MP\']', 'Mediatek MT6735', '[\'8GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Removable Li-Ion 4000 mAh battery', '[\'About\', \'250\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  September', '156.3 x 77.5 x 8.9 mm (6.15 x 3.05 x 0.35 in)', '165', '5.82', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.5 inches (~68.8% screen-to-body ratio)', 'Android 5.1 (Lollipop)', 'Quad-core 1.3 GHz Cortex-A53', 'Mali-T720MP2', 'microSD (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0| USB On-The-Go', 'Accelerometer| proximity| compass', 'Black', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z630.jpg'),
(36, 'Liquid Z530S', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'8\', \'MP\']', 'Mediatek MT6753', '[\'32GB\', \'3GB\', \'RAM\']', 'Removable Li-Ion 2420 mAh battery', '[\'About\', \'150\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  November', '144 x 70.3 x 8.9 mm (5.67 x 2.77 x 0.35 in)', '145', '5.11', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~68.1% screen-to-body ratio)', 'Android 5.1 (Lollipop)', 'Octa-core 1.3 GHz Cortex-A53', 'Mali-T720MP3', 'microSD (dedicated slot)', '32 GB', '3 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Black| White', 'None', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z530.jpg'),
(37, 'Liquid Z530', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'8\', \'MP\']', 'Mediatek MT6735', '[\'8GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Removable Li-Ion 2420 mAh battery', 'None', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  October', '144 x 70.3 x 8.9 mm (5.67 x 2.77 x 0.35 in)', '145', '5.11', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~68.1% screen-to-body ratio)', 'Android 5.1 (Lollipop)', 'Quad-core 1.3 GHz Cortex-A53', 'Mali-T720MP2', 'microSD (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Black| White', '150.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z530.jpg'),
(38, 'Liquid M330', 'Acer', '480 x 854 pixels (~218 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'5\', \'MP\']', 'Qualcomm MSM8909 Snapdragon 210', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Ion 2000 mAh battery', 'None', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', ' LTE', 'HSPA  LTE', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  November', '136 x 66.5 x 9.6 mm (5.35 x 2.62 x 0.38 in)', '142', '5.01', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '4.5 inches (~61.7% screen-to-body ratio)', 'Microsoft Windows 10', 'Quad-core 1.0 GHz Cortex-A7', 'Adreno 304', 'microSD (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Mystic Black| Pure White', 'None', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-m320-m330.jpg'),
(39, 'Liquid M320', 'Acer', '480 x 854 pixels (~218 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Qualcomm MSM8909 Snapdragon 210', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Ion 2000 mAh battery', '[\'About\', \'80\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', 'None', 'HSPA 42.2/5.76 Mbps', 'Yes', 'Yes', '2015  September', 'Available. Released 2015  November', '136 x 66.5 x 9.6 mm (5.35 x 2.62 x 0.38 in)', '142', '5.01', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '4.5 inches (~61.7% screen-to-body ratio)', 'Microsoft Windows 10', 'Quad-core 1.1 GHz Cortex-A7', 'Adreno 304', 'microSD (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Mystic Black| Pure White', 'None', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-m320-m330.jpg'),
(40, 'Iconia Tab 10 A3-A30', 'Acer', '1920 x 1200 pixels (~224 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'2\', \'MP\']', 'Intel Atom Z3735F', '[\'16GB\', \'2GB\', \'RAM,\', \'32GB\', \'2GB\', \'RAM,\', \'64GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 5910 mAh battery (22 Wh)', '[\'About\', \'220\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2015  April', 'Available. Released 2015  June', '260 x 176 x 9.7 mm (10.24 x 6.93 x 0.38 in)', '540', '1.19', 'No', 'LED-backlit IPS LCD capacitive touchscreen  16M colors', '10.1 inches (~64.6% screen-to-body ratio)', 'Android 5.0 (Lollipop)', 'Quad-core 1.33 GHz', 'None', 'microSD  up to 256 GB (dedicated slot)', '16/32/64 GB', '2 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 a/b/g/n/ac| dual-band| hotspot', '4.0| A2DP', 'A-GPS only', 'Yes', 'No', 'microUSB 2.0', 'Accelerometer', 'Various', '250.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-tab-10-a3-a30-new.png'),
(41, 'Iconia One 8 B1-820', 'Acer', '800 x 1280 pixels (~189 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'VGA\']', 'Intel Atom Z3735G', '[\'16GB\', \'1GB\', \'RAM,\', \'32GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion 4550 mAh battery (17.2 Wh)', '[\'About\', \'90\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2015  April', 'Available. Released 2015  May', '213.9 x 127.7 x 9.5 mm (8.42 x 5.03 x 0.37 in)', '355', '12.52', 'No', 'IPS LCD capacitive touchscreen', '8.0 inches (~67.9% screen-to-body ratio)', 'Android 5.0 (Lollipop)', 'Quad-core 1.33 GHz', 'None', 'microSD  up to 32 GB (dedicated slot)', '16/32 GB', '1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n', '4.0| A2DP', 'Yes with A-GPS GLONASS', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Various', '180.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-one-8-b1-820.jpg'),
(42, 'Iconia Tab A3-A20', 'Acer', '1280 x 800 pixels (~149 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT8127', '[\'16GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Po 5910 mAh battery (A3-A20-K1AY)', '[\'About\', \'190\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2014  October', 'Available. Released 2014  October', '256.5 x 170.2 x 10.2 mm (10.10 x 6.70 x 0.40 in)', '508', '1.12', 'No', 'LED-backlit IPS LCD capacitive touchscreen  16M colors', '10.1 inches (~67.8% screen-to-body ratio)', 'Android 4.4 (KitKat)', 'Quad-core 1.3 GHz Cortex-A7', 'Mali-450MP4', 'microSD  up to 256 GB (dedicated slot)', '16 GB', '1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'A-GPS only', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Black| White', '190.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-a3-20.jpg'),
(43, 'Iconia Tab A3-A20FHD', 'Acer', '1920 x 1200 pixels (~224 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT8127', '[\'32GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Po 5910 mAh battery (A3-A20FHD-K8KX)', '[\'About\', \'190\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2014  October', 'Available. Released 2014  October', '256.5 x 170.2 x 10.2 mm (10.10 x 6.70 x 0.40 in)', '508', '1.12', 'No', 'LED-backlit IPS LCD capacitive touchscreen  16M colors', '10.1 inches (~67.8% screen-to-body ratio)', 'Android 4.4 (KitKat)', 'Quad-core 1.5 GHz Cortex-A7', 'Mali-450MP4', 'microSD  up to 256 GB (dedicated slot)', '32 GB', '2 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'A-GPS only', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Black| White', '230.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-a3-20.jpg'),
(44, 'Liquid Jade Z', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'f/1.8,\', \'AF\']', '[\'Single\', \'5\', \'MP\']', 'Mediatek MT6732', '[\'8GB\', \'1GB\', \'RAM\', \'(Jade\', \'Z),\', \'16GB\', \'2GB\', \'RAM\', \'(Jade\', \'Z+)\']', 'Non-removable Li-Po 2300 mAh battery', '[\'About\', \'200\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', 'HSDPA 900 / 2100 ', 'LTE band 1(2100)| 3(1800)| 7(2600)| 20(800)', 'HSPA 21.1/5.76 Mbps  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2015  March', 'Available. Released 2015  April', '143.5 x 69.8 x 8 mm (5.65 x 2.75 x 0.31 in)', '110', '3.88', 'Dual SIM (Nano-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~68.8% screen-to-body ratio)', 'Android 5.0 (Lollipop)', 'Quad-core 1.5 GHz Cortex-A53', 'Mali-T760MP2', 'microSD  up to 32 GB (uses SIM 2 slot)', '8 GB', '1 GB RAM - Liquid Jade Z', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP| EDR', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| gyro| proximity| compass', 'Black| White', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-jade-z.jpg'),
(45, 'Liquid Z520', 'Acer', '480 x 854 pixels (~187 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6582M', '[\'8GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Removable Li-Po 2000 mAh battery', 'None', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 2100 ', 'None', 'HSPA', 'Yes', 'Yes', '2015  March', 'Available. Released 2015  April', '154 x 86 x 6.4 mm (6.06 x 3.39 x 0.25 in)', '118', '4.16', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'TFT capacitive touchscreen', '5.0 inches (~57.1% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Quad-core 1.3 GHz Cortex-A7', 'Mali-400MP2', 'microSD  up to 32 GB (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Black| White', '130.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z520.jpg'),
(46, 'Liquid Z220', 'Acer', '480 x 800 pixels (~233 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Qualcomm Snapdragon 200', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Ion 1300 mAh battery', '[\'About\', \'90\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 2100 ', 'None', 'HSPA', 'Yes', 'Yes', '2015  March', 'Available. Released 2015  April', '125.3 x 64 x 9.6 mm (4.93 x 2.52 x 0.38 in)', '120', '4.23', 'Single SIM (Mini-SIM) or Dual SIM (Mini-SIM/Micro-SIM| dual stand-by)', 'Capacitive touchscreen', '4.0 inches (~56.8% screen-to-body ratio)', 'Android 5.0 (Lollipop)', 'Dual-core 1.2 GHz Cortex-A7', 'Adreno 302', 'microSD  up to 32 GB (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer', 'Black| White', '90.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z220.jpg'),
(47, 'Liquid M220', 'Acer', '480 x 800 pixels (~233 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Qualcomm MSM8210 Snapdragon 200', '[\'4GB\', \'512MB\', \'RAM\', \'(M220),\', \'8GB\', \'1GB\', \'RAM\', \'(M220+)\']', 'Removable Li-Ion 1300 mAh battery', '[\'About\', \'200\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 2100 ', 'None', 'HSPA 21.1/5.76 Mbps', 'Yes', 'Yes', '2015  March', 'Available. Released 2015  May', '124.9 x 64 x 9.6 mm (4.92 x 2.52 x 0.38 in)', '119', '4.20', 'Single SIM (Mini-SIM) or Dual SIM (Mini-SIM/Micro-SIM| dual stand-by)', 'TFT capacitive touchscreen', '4.0 inches (~57.0% screen-to-body ratio)', 'Microsoft Windows Phone 8.1', 'Dual-core 1.2 GHz Cortex-A7', 'Adreno 302', 'microSD  up to 32 GB (dedicated slot)', '4 GB', '512 MB RAM - Liquid M220', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Mystic Black| Pure White', '80.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-m220.jpg'),
(48, 'Liquid Z410', 'Acer', '540 x 960 pixels (~245 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6732M', '[\'8GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Removable Li-Po 2000 mAh battery', '[\'About\', \'100\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 2100 ', 'LTE band 1(2100)| 3(1800)| 7(2600)| 20(800)', 'HSPA  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2015  January', 'Available. Released 2015  February', '136 x 66.7 x 9.9 mm (5.35 x 2.63 x 0.39 in)', '145', '5.11', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '4.5 inches (~61.5% screen-to-body ratio)', 'Android 4.4.4 (KitKat)', 'Quad-core 1.3 GHz Cortex-A53', 'Mali-T760MP2', 'microSD  up to 32 GB (dedicated slot)', '8 GB', '1 GB RAM', 'Yes dual speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Black', '130.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z410.jpg'),
(49, 'Liquid Jade S', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'f/1.8,\', \'AF\']', '[\'Single\', \'5\', \'MP,\', \'f/2.2\']', 'Mediatek MT6752M', '[\'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 2300 mAh battery', '[\'About\', \'220\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', 'HSDPA 900 / 2100 ', 'LTE band 3(1800)| 8(900)| 28(700) - Taiwan', 'HSPA 21.1/5.76 Mbps  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2014  December', 'Available. Released 2014  December', '143 x 69 x 7.8 mm (5.63 x 2.72 x 0.31 in)', '116', '4.09', 'Dual SIM (Nano-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~69.8% screen-to-body ratio)', 'Android 4.4.4 (KitKat)| upgradable to 5.1 (Lollipop)', 'Octa-core 1.5 GHz Cortex-A53', 'Mali-T760MP2', 'microSD  up to 32 GB (uses SIM 2 slot)', '16 GB', '2 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP| EDR', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity| compass', 'Black| White| Red| Pink', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-jade-s-s56.jpg'),
(50, 'Liquid Z500', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6582', '[\'4GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 2000 mAh battery', '[\'About\', \'170\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 2100 ', 'None', 'HSPA', 'Yes', 'Yes', '2014  September', 'Available. Released 2014  Septeber', '145 x 73 x 8.8 mm (5.71 x 2.87 x 0.35 in)', '150', '5.29', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~65.1% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Quad-core 1.3 GHz Cortex-A7', 'Mali-400MP2', 'microSD  up to 32 GB (dedicated slot)', '4 GB', '1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP| EDR', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Aquamarine Green| Sandy Silver| Titanium Black', '150.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z5.jpg'),
(51, 'Liquid X1', 'Acer', '720 x 1280 pixels (~258 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6592', '[\'16GB\', \'2GB\', \'RAM\']', 'Removable Li-Ion 2700 mAh battery', '[\'About\', \'340\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 ', 'HSDPA 900 / 2100 ', 'LTE band 3(1800)| 7(2600)', 'HSPA  LTE', 'Yes', 'Yes', '2014  June', 'Available. Released 2014  September', '153.3 x 80.4 x 8.5 mm (6.04 x 3.17 x 0.33 in)', '164', '5.78', 'Micro-SIM', 'IPS LCD capacitive touchscreen  16M colors', '5.7 inches (~72.7% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Octa-core 1.7 GHz Cortex-A7', 'Mali-450MP4', 'microSD  up to 32 GB (dedicated slot)', '16 GB', '2 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity| compass', 'Graphite black| Wine red', '260.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-x1.jpg'),
(52, 'Liquid Jade', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6582', '[\'8GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 2100 mAh battery', 'None', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', 'HSDPA 900 / 2100 ', 'None', 'HSPA', 'Yes', 'Yes', '2014  June', 'Available. Released 2014  July', '140.5 x 69 x 7.5 mm (5.53 x 2.72 x 0.30 in)', '110', '3.88', 'Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~71.1% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Quad-core 1.3 GHz Cortex-A7', 'Mali-400MP2', 'microSD  up to 32 GB (uses SIM 2 slot)', '8 GB', '1 GB RAM - Liquid Jade', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity| compass', 'Black| White| Green| Pink| Gray', '180.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-jade.jpg'),
(53, 'Liquid E700', 'Acer', '720 x 1280 pixels (~294 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6582', '[\'4GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 3500 mAh battery', '[\'About\', \'200\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 & SIM 3', 'HSDPA 850 / 900 / 1900 / 2100 ', 'None', 'HSPA', 'Yes', 'Yes', '2014  June', 'Available. Released 2014  August', '147.3 x 73 x 9.9 mm (5.80 x 2.87 x 0.39 in)', '155', '5.47', 'Triple SIM (Micro-SIM)', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~64.1% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Quad-core 1.2 GHz Cortex-A7', 'Mali-400MP2', 'microSD  up to 32 GB (dedicated slot)', '16 GB', '2 GB RAM or 4 GB| 1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Titan Black| Burgundy Red', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-e700.jpg'),
(54, 'Liquid E600', 'Acer', '480 x 854 pixels (~196 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\', \'or\', \'VGA\']', 'Qualcomm MSM8926 Snapdragon 400', '[\'4GB\', \'1GB\', \'RAM,\', \'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 2500 mAh battery', '[\'About\', \'240\', \'EUR\']', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 ', 'HSDPA 900 / 2100 ', 'LTE band 1(2100)| 3(1800)| 7(2600)| 20(800)', 'HSPA 21.1/5.76 Mbps  LTE Cat4 150/50 Mbps', 'Yes', 'Yes', '2014  June', 'Available. Released 2014  September', '147 x 72 x 9.5 mm (5.79 x 2.83 x 0.37 in)', '155', '5.47', 'Micro-SIM', 'IPS LCD capacitive touchscreen  16M colors', '5.0 inches (~65.1% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Quad-core 1.2 GHz Cortex-A7', 'Adreno 305', 'microSD  up to 32 GB (dedicated slot)', '4 GB', '1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'To be confirmed', 'microUSB 2.0', 'Accelerometer| proximity', 'Black| Green| Dark red', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-e600-1.jpg'),
(55, 'Liquid Z200', 'Acer', '480 x 800 pixels (~233 ppi pixel density)', '[\'Single\', \'2\', \'MP\']', '[\'NaN\', \'No\']', 'Mediatek MT6572M', '[\'4GB\', \'512MB\', \'RAM\']', 'Removable Li-Ion 1300 mAh battery', '[\'About\', \'100\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 2100 ', 'None', 'HSPA', 'Yes', 'Yes', '2014  June', 'Available. Released 2014  September', '126 x 65 x 10.3 mm (4.96 x 2.56 x 0.41 in)', '130', '4.59', 'Single SIM (Mini-SIM) or Dual SIM (Mini-SIM/Micro-SIM| dual stand-by)', 'TFT capacitive touchscreen', '4.0 inches (~55.6% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Dual-core 1.0 GHz Cortex-A7', 'Mali-400', 'microSD  up to 32 GB (dedicated slot)', '4 GB', '512 MB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer', 'Titanium Black| Essential White| Fragrant Pink| Sky Blue| Sunshine Yellow', '90.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z200.jpg'),
(56, 'Iconia Tab 8 A1-840FHD', 'Acer', '1200 x 1920 pixels (~283 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'2\', \'MP\']', 'Intel Atom Z3745', '[\'16GB\', \'2GB\', \'RAM,\', \'32GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion 4600 mAh battery', '[\'About\', \'150\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2014  June', 'Available. Released 2014  September', '215 x 130 x 8.5 mm (8.46 x 5.12 x 0.33 in)', '360', '12.70', 'No', 'IPS LCD capacitive touchscreen  16M colors', '8.0 inches (~66.4% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Quad-core 1.86 GHz', 'Intel Gen 7 (Ivy Bridge)', 'microSD  up to 32 GB (dedicated slot)', '16/32 GB', '2 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 a/b/g/n| dual-band', '4.0| A2DP', 'Yes GLONASS', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Silver', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-tab-8-2014-1.jpg'),
(57, 'Iconia Tab 7 A1-713', 'Acer', '600 x 1024 pixels (~170 ppi pixel density)', '[\'Single\', \'2\', \'MP\']', '[\'Single\', \'Yes\']', 'None', '[\'16GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion battery', '[\'About\', \'230\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 N/A', ' HSDPA', 'None', 'HSPA', 'Yes', 'Yes', '2014  April', 'Available. Released 2014  August', '8.9 mm thickness', '298', '10.51', 'Yes', 'TFT capacitive touchscreen', '7.0 inches (~64.5% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)| planned upgrade to 4.4.2 (KitKat)', 'Quad-core', 'None', 'microSD  up to 32 GB (dedicated slot)', '16 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n', 'Yes', 'Yes', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Black', '110.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-tab-7.jpg'),
(58, 'Iconia Tab 7 A1-713HD', 'Acer', '800 x 1280 pixels (~216 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'Yes\']', 'None', '[\'16GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion battery', '[\'About\', \'110\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 N/A', ' HSDPA', 'None', 'HSPA', 'Yes', 'Yes', '2014  April', 'Available. Released 2014  August', '8.9 mm thickness', '298', '10.51', 'Yes', 'IPS LCD capacitive touchscreen', '7.0 inches (~66.4% screen-to-body ratio)', 'Android 4.4.2 (KitKat)', 'Quad-core', 'None', 'microSD  up to 32 GB (dedicated slot)', '16 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n', 'Yes', 'Yes', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Black', '150.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-tab-7.jpg'),
(59, 'Iconia One 7 B1-730', 'Acer', '800 x 1280 pixels (~216 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'Yes\']', 'Intel Atom Z2560', '[\'8GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion 3700 mAh battery', '[\'About\', \'130\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2014  April', 'Available. Released 2014  June', '8.9 mm thickness', 'None', 'None', 'No', 'IPS LCD capacitive touchscreen', '7.0 inches (~66.4% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)| planned upgrade to 4.4.2 (KitKat)', 'Dual-core 1.6 GHz', 'PowerVR SGX544MP2', 'microSD  up to 32 GB (dedicated slot)', '8 GB', '1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n', 'Yes', 'No', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Red| white| black| blue| pink', '90.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-one-7.jpg'),
(60, 'Liquid E3 Duo Plus', 'Acer', '720 x 1280 pixels (~312 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6589', '[\'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Ion battery', '[\'About\', \'200\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', ' HSDPA', 'None', 'HSPA', 'Yes', 'Yes', '2014  Q3', 'Available. Released 2014  Q3', '138 x 69 x 8.9 mm (5.43 x 2.72 x 0.35 in)', 'None', 'None', 'Dual SIM', 'IPS LCD capacitive touchscreen  16M colors', '4.7 inches (~64.0% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)', 'Quad-core 1.2 GHz Cortex-A7', 'PowerVR SGX544', 'microSD  up to 32 GB (dedicated slot)', '16 GB', '2 GB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'Yes with A-GPS GLONASS', 'None', 'To be confirmed', 'microUSB 2.0', 'Accelerometer| proximity', 'Black', '240.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-e3-plus.jpg'),
(61, 'Liquid E3', 'Acer', '720 x 1280 pixels (~312 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6589', '[\'4GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion battery', 'None', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', 'None', 'HSPA', 'Yes', 'Yes', '2014  February', 'Available. Released 2014  April', '136 x 68 x 9 mm (5.35 x 2.68 x 0.35 in)', '134', '4.73', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'IPS LCD capacitive touchscreen  16M colors', '4.7 inches (~65.8% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)', 'Quad-core 1.2 GHz Cortex-A7', 'PowerVR SGX544', 'microSD  up to 32 GB (dedicated slot)', '4 GB', '1 GB RAM', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes with A-GPS GLONASS', 'None', 'To be confirmed', 'microUSB 2.0', 'Accelerometer| proximity', 'Black/White', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-e3-new.jpg'),
(62, 'Liquid Z4', 'Acer', '480 x 800 pixels (~233 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'1.3\', \'MP\']', 'Mediatek MT6572', '[\'4GB\', \'512MB\', \'RAM\']', 'Removable Li-Ion 1630 mAh battery', '[\'About\', \'110\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', ' HSDPA', 'None', 'HSPA', 'Yes', 'Yes', '2014  February', 'Available. Released 2014  April', '124 x 64 x 9.7 mm (4.88 x 2.52 x 0.38 in)', '122', '4.30', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'TFT capacitive touchscreen', '4.0 inches (~57.4% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)', 'Dual-core 1.3 GHz Cortex-A7', 'Mali-400', 'microSD (dedicated slot)', '4 GB', '512 MB RAM', 'Yes', 'Yes', 'Yes', '4.0| A2DP', 'No', 'None', 'No', 'microUSB 2.0', 'Accelerometer| proximity', 'Black/White', '100.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z4.jpg'),
(63, 'Iconia B1-721', 'Acer', '600 x 1024 pixels (~170 ppi pixel density)', '[\'Single\', \'VGA\']', '[\'NaN\', \'No\']', 'Mediatek MT8312', '[\'16GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Po 2955 mAh battery', '[\'About\', \'100\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 ', ' HSDPA', 'None', 'HSPA', 'Yes', 'Yes', '2014  January', 'Available. Released 2014  January', '199 x 122.3 x 11.4 mm (7.83 x 4.81 x 0.45 in)', '323', '11.39', 'Yes', 'TFT capacitive touchscreen', '7.0 inches (~56.7% screen-to-body ratio)', 'Android 4.2 (Jelly Bean)', 'Dual-core 1.3 GHz Cortex-A7', 'Mali-400', 'microSD  up to 32 GB (dedicated slot)', '16 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n', 'Yes', 'Yes', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Black/Red', '130.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-b1-721.jpg'),
(64, 'Iconia B1-720', 'Acer', '600 x 1024 pixels (~170 ppi pixel density)', '[\'Single\', \'VGA\']', '[\'NaN\', \'No\']', 'Mediatek MT8111', '[\'8GB\', \'1GB\', \'RAM,\', \'16GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Po 2955 mAh battery', '[\'About\', \'130\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2014  January', 'Available. Released 2014  January', '198.1 x 121.9 x 10.2 mm (7.80 x 4.80 x 0.40 in)', '315', '11.11', 'No', 'TFT capacitive touchscreen', '7.0 inches (~57.1% screen-to-body ratio)', 'Android 4.2 (Jelly Bean)', 'Dual-core 1.3 GHz', 'PowerVR SGX531', 'microSD  up to 32 GB (dedicated slot)', '8/16 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n', '4.0| A2DP', 'Yes', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'Various', '100.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-tab-b1-720.jpg'),
(65, 'Iconia A1-830', 'Acer', '768 x 1024 pixels (~162 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Intel Atom Z2560', '[\'16GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion 4000 mAh battery', 'None', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2014  January', 'Available. Released 2014  March', '203 x 138.4 x 8.2 mm (7.99 x 5.45 x 0.32 in)', '380', '13.40', 'No', 'LED-backlit IPS LCD capacitive touchscreen  16M colors', '7.9 inches (~68.8% screen-to-body ratio)', 'Android 4.2 (Jelly Bean)', 'Dual-core 1.6 GHz', 'PowerVR SGX544MP2', 'microSD  up to 32 GB (dedicated slot)', '16 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n', '3.0', 'Yes', 'None', 'No', 'microUSB 2.0', 'Accelerometer', 'White', '130.0', 'http://cdn2.gsmarena.com/vv/bigpic/Acer-Iconia-A1-830.jpg'),
(66, 'Liquid Z5', 'Acer', '480 x 854 pixels (~196 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'VGA\']', 'Mediatek MT6572', '[\'4GB\', \'512MB\', \'RAM\']', 'Non-removable Li-Ion 2000 mAh battery', '[\'About\', \'130\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2', 'HSDPA 900 / 2100 ', 'None', 'HSPA', 'Yes', 'Yes', '2014  January', 'Available. Released 2014  January', '145.5 x 73.5 x 8.8 mm (5.73 x 2.89 x 0.35 in)', '150', '5.29', 'Dual SIM', 'TFT capacitive touchscreen  16M colors', '5.0 inches (~64.4% screen-to-body ratio)', 'Android 4.2 (Jelly Bean)', 'Dual-core 1.3 GHz Cortex-A7', 'Mali-400', 'microSD  up to 32 GB (dedicated slot)', '4 GB', '512 MB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '3.0| A2DP| EDR', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Essential White| Gentle Grey', '170.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z5.jpg'),
(67, 'Liquid S2', 'Acer', '1080 x 1920 pixels (~368 ppi pixel density)', '[\'Single\', \'13\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Qualcomm MSM8974 Snapdragon 800', '[\'16GB\', \'2GB\', \'RAM\']', 'Non-removable Li-Po 3300 mAh battery', 'None', 'GSM / HSPA / LTE', 'GSM 850 / 900 / 1800 / 1900 ', 'HSDPA 900 / 2100 ', 'LTE band 3(1800)| 7(2600)| 20(800)', 'HSPA 42.2/5.76 Mbps  LTE-A Cat4 150/50 Mbps', 'Yes', 'Yes', '2013  August', 'Available. Released 2013  December', '166 x 86.2 x 9 mm (6.54 x 3.39 x 0.35 in)', '229', '8.08', 'Nano-SIM', 'IPS LCD capacitive touchscreen  16M colors', '6.0 inches (~69.0% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)', 'Quad-core 2.2 GHz Krait 400', 'Adreno 330', 'microSD  up to 64 GB (dedicated slot)', '16 GB', '2 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 a/b/g/n/ac| dual-band| Wi-Fi Direct| DLNA| hotspot', '4.0| A2DP', 'Yes with A-GPS GLONASS', 'Yes', 'Stereo FM radio| RDS', 'microUSB 2.0', 'Accelerometer| gyro| proximity| compass', 'Black| Red', '340.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-s2.jpg'),
(68, 'Liquid Z3', 'Acer', '320 x 480 pixels (~165 ppi pixel density)', '[\'Single\', \'3.15\', \'MP\']', '[\'NaN\', \'No\']', 'Mediatek MT6572', '[\'4GB\', \'512MB\', \'RAM\']', 'Removable Li-Ion 1500 mAh battery', 'None', 'GSM / HSPA', 'GSM 900 / 1800 / 1900 ', 'HSDPA 900 / 2100 ', 'None', 'HSPA 21.1/5.76 Mbps', 'Yes', 'Yes', '2013  August', 'Available. Released 2013  September', '109 x 60 x 10.4 mm (4.29 x 2.36 x 0.41 in)', '120', '4.23', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'TFT capacitive touchscreen  16M colors', '3.5 inches (~55.8% screen-to-body ratio)', 'Android 4.2 (Jelly Bean)', 'Dual-core 1.0 GHz Cortex-A7', 'Mali-400', 'microSD  up to 32 GB (dedicated slot)', '4 GB', '512 MB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 a/b/g/n| hotspot', '3.0| A2DP| EDR', 'Yes with A-GPS', 'None', 'Stereo FM radio', 'microUSB 2.0', 'Accelerometer| proximity', 'Rock Black| Classic White', '100.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-z3.jpg'),
(69, 'Liquid S1', 'Acer', '720 x 1280 pixels (~258 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'2\', \'MP\']', 'Mediatek MT6589', '[\'8GB\', \'1GB\', \'RAM\']', 'Removable Li-Po 2400 mAh battery', '[\'About\', \'70\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 - SIM 1 & SIM 2 (dual-SIM model only)', 'HSDPA 900 / 2100 ', 'None', 'HSPA 42.2/5.76 Mbps', 'Yes', 'Yes', '2013  June', 'Available. Released 2013  August', '163 x 83 x 9.6 mm (6.42 x 3.27 x 0.38 in)', '195', '6.88', 'Single SIM (Micro-SIM) or Dual SIM (Micro-SIM| dual stand-by)', 'TFT capacitive touchscreen  16M colors', '5.7 inches (~66.2% screen-to-body ratio)', 'Android 4.2 (Jelly Bean)', 'Quad-core 1.5 GHz Cortex-A7', 'PowerVR SGX544', 'microSD  up to 32 GB (dedicated slot)', '8 GB', '1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP| LE', 'Yes with A-GPS', 'None', 'FM radio', 'microUSB 2.0', 'Accelerometer| gyro| proximity| compass', 'White| Black', '320.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-liquid-s1.jpg'),
(70, 'Iconia Tab A3', 'Acer', '800 x 1280 pixels (~149 ppi pixel density)', '[\'Single\', \'5\', \'MP\']', '[\'Single\', \'VGA\']', 'Mediatek MT8125T - Wi-Fi', '[\'16GB\', \'1GB\', \'RAM,\', \'32GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Po 7300 mAh battery (27 Wh)', '[\'About\', \'260\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 ', 'HSDPA 850 / 900 / 1900 / 2100 ', 'None', 'HSPA 21.1/5.76 Mbps', 'Yes', 'Up to 236.8 kbps', '2013  September', 'Available. Released 2013  November', '260 x 175 x 10.2 mm (10.24 x 6.89 x 0.40 in)', '560', '1.23', 'Micro-SIM', 'LED-backlit IPS LCD capacitive touchscreen  16M colors', '10.1 inches (~65.0% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)', 'Quad-core 1.2 GHz Cortex-A7', 'PowerVR SGX544', 'microSD  up to 32 GB (dedicated slot)', '16/32 GB', '1 GB RAM', 'Yes with stereo speakers', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'No', 'microUSB 2.0| USB Host', 'Accelerometer| gyro', 'Black/Silver| White', '190.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-a3-a10.jpg');
INSERT INTO `mobile` (`mobile_id`, `mobile_name`, `category_name`, `display_size`, `main_camera`, `selfie_camera`, `chipset`, `storage_and_ram`, `battary`, `price`, `network_technology`, `2G_bands`, `3G_bands`, `4G_bands`, `network_speed`, `GPRS`, `EDGE`, `announced`, `status`, `dimentions`, `weight_g`, `weight_oz`, `SIM`, `display_type`, `display_resolution`, `OS`, `CPU`, `GPU`, `memory_card`, `internal_memory`, `RAM`, `loud_speaker`, `audio_jack`, `WLAN`, `bluetooth`, `GPS`, `NFC`, `radio`, `USB`, `sensors`, `colors`, `approx_price_EUR`, `img_url`) VALUES
(71, 'Iconia Tab A1-811', 'Acer', '768 x 1024 pixels (~162 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'VGA\']', 'Mediatek MT8389W', '[\'8GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion 4960 mAh battery (18.6 Wh)', '[\'About\', \'120\', \'EUR\']', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 ', ' HSDPA', 'None', 'HSPA', 'Yes', 'Yes', '2013  Q2', 'Available. Released 2013  Q2', '208.7 x 145.7 x 11.1 mm (8.22 x 5.74 x 0.44 in)', '430', '15.17', 'Yes', 'TFT capacitive touchscreen  16M colors', '7.9 inches (~63.6% screen-to-body ratio)', 'Android 4.2 (Jelly Bean)', 'Quad-core 1.2 GHz Cortex-A7', 'PowerVR SGX544', 'microSD  up to 32 GB (dedicated slot)', '8 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP', 'Yes with A-GPS', 'None', 'No', 'microUSB 2.0', 'Accelerometer| gyro', 'White', '150.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-b1-810.jpg'),
(72, 'Iconia Tab A1-810', 'Acer', '768 x 1024 pixels (~162 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'AF\']', '[\'Single\', \'VGA\']', 'Mediatek MT8125', '[\'8GB\', \'1GB\', \'RAM,\', \'16GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Ion 4960 mAh battery (18.6 Wh)', '[\'About\', \'200\', \'EUR\']', 'No cellular connectivity', ' N/A', 'None', 'None', 'None', 'No', 'No', '2013  April', 'Available. Released 2013  May', '208.7 x 145.7 x 11.1 mm (8.22 x 5.74 x 0.44 in)', '410', '14.46', 'No', 'LED-backlit IPS LCD capacitive touchscreen  16M colors', '7.9 inches (~63.6% screen-to-body ratio)', 'Android 4.2.2 (Jelly Bean)| upgrad&#1072;ble to 4.4.2 (KitKat)', 'Quad-core 1.2 GHz', 'PowerVR SGX544', 'microSD  up to 32 GB (dedicated slot)', '8/16 GB', '1 GB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n', '4.0| A2DP', 'Yes', 'None', 'No', 'microUSB 2.0', 'Accelerometer| gyro', 'Black', '120.0', 'http://cdn2.gsmarena.com/vv/bigpic/acer-iconia-b1-810.jpg'),
(73, 'iPhone-5', 'Apple', '640 x 1136 pixels (~326 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'f/2.4,\', \'33mm\', \'(standard),\', \'1/3.2\',\', \'1.4µm,\', \'AF\']', '[\'Single\', \'1.2\', \'MP,\', \'f/2.4,\', \'35mm\', \'(standard)\']', 'Apple A6', '[\'16GB\', \'1GB\', \'RAM,\', \'32GB\', \'1GB\', \'RAM,\', \'64GB\', \'1GB\', \'RAM\']', 'Non-removable Li-Po 1440 mAh battery (5.45 Wh)', 'None', 'GSM / CDMA / HSPA / EVDO / LTE', 'GSM 850 / 900 / 1800 / 1900 - GSM A1428', 'HSDPA 850 / 900 / 1700 / 1900 / 2100 - GSM A1428', 'LTE band 4(1700/2100)| 17(700) - GSM A1428', 'HSPA 42.2/5.76 Mbps  LTE Cat3 100/50 Mbps  EV-DO Rev.A 3.1 Mbps', 'Yes', 'Yes', '2012  September', 'Available. Released 2012  September ', '123.8 x 58.6 x 7.6 mm (4.87 x 2.31 x 0.30 in)', '112', '3.95', 'Nano-SIM', 'LED-backlit IPS LCD  capacitive touchscreen  16M colors', '4.0 inches (~60.8% screen-to-body ratio)', 'iOS 6| upgradable to iOS 10.3', 'Dual-core 1.3 GHz Swift (ARM v7-based)', 'PowerVR SGX 543MP3 (triple-core graphics)', 'No', '16/32/64 GB', '1 GB RAM DDR2', 'Yes', 'Yes', 'Wi-Fi 802.11 a/b/g/n| dual-band| hotspot', '4.0| A2DP| LE', 'Yes with A-GPS GLONASS', 'None', 'No', '2.0| reversible connector', 'Accelerometer| gyro| proximity| compass', 'Black/Slate| White/Silver', '340.0', 'http://cdn2.gsmarena.com/vv/bigpic/apple-iphone-5-ofic.jpg'),
(74, 'iPhone-6', 'Apple', '750 x 1334 pixels (~326 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'f/2.2,\', \'29mm\', \'(standard),\', \'1/3\',\', \'1.5µm,\', \'PDAF\']', '[\'Single\', \'1.2\', \'MP,\', \'f/2.2,\', \'31mm\', \'(standard)\']', 'Apple A8', '[\'16GB\', \'1GB\', \'RAM,\', \'32GB\', \'1GB\', \'RAM,\', \'64GB\', \'1GB\', \'RAM,\', \'128G...\']', 'Non-removable Li-Po 1810 mAh battery (6.9 Wh)', 'None', 'GSM / CDMA / HSPA / EVDO / LTE', 'GSM 850 / 900 / 1800 / 1900 - A1549 (GSM)| A1549 (CDMA)| A1586', 'HSDPA 850 / 900 / 1700 / 1900 / 2100 - A1549 (GSM)| A1549 (CDMA)| A1586', 'LTE band 1(2100)| 2(1900)| 3(1800)| 4(1700/2100)| 5(850)| 7(2600)| 8(900)| 13(700)| 17(700)| 18(800)| 19(800)| 20(800)| 25(1900)| 26(850)| 28(700)| 29(700) - A1549 GSM| A1549 CDMA', 'HSPA 42.2/5.76 Mbps  LTE-A Cat4 150/50 Mbps  EV-DO Rev.A 3.1 Mbps', 'Yes', 'Yes', '2014  September', 'Available. Released 2014  September', '138.1 x 67 x 6.9 mm (5.44 x 2.64 x 0.27 in)', '129', '4.55', 'Nano-SIM', 'LED-backlit IPS LCD  capacitive touchscreen  16M colors', '4.7 inches (~65.8% screen-to-body ratio)', 'iOS 8| upgradable to iOS 10.3.2', 'Dual-core 1.4 GHz Typhoon (ARM v8-based)', 'PowerVR GX6450 (quad-core graphics)', 'No', '16/32/64/128 GB', '1 GB RAM DDR3', 'Yes', 'Yes', 'Wi-Fi 802.11 a/b/g/n/ac| dual-band| hotspot', '4.0| A2DP| LE', 'Yes with A-GPS GLONASS', 'Yes (Apple Pay only)', 'No', '2.0| reversible connector', 'Fingerprint (front-mounted)| accelerometer| gyro| proximity| compass| barometer', 'Space Gray| Silver| Gold', '540.0', 'http://cdn2.gsmarena.com/vv/bigpic/apple-iphone-6-4.jpg'),
(75, 'iPhone-4s', 'Apple', '640 x 960 pixels (~330 ppi pixel density)', '[\'Single\', \'8\', \'MP,\', \'f/2.4,\', \'35mm\', \'(standard),\', \'1/3.2\',\', \'1.4µm,\', \'AF\']', '[\'Single\', \'VGA,\', \'videocalling\', \'over\', \'Wi-Fi\', \'and\', \'3G\']', 'Apple A5', '[\'8GB\', \'512MB\', \'RAM,\', \'16GB\', \'512MB\', \'RAM,\', \'32GB\', \'512MB\', \'RAM,...\']', 'Non-removable Li-Po 1432 mAh battery (5.3 Wh)', 'None', 'GSM / CDMA / HSPA / EVDO', 'GSM 850 / 900 / 1800 / 1900 ', 'HSDPA 850 / 900 / 1900 / 2100 ', 'None', 'HSPA 14.4/5.76 Mbps', 'Yes', 'Yes', '2011  October', 'Available. Released 2011  October', '115.2 x 58.6 x 9.3 mm (4.54 x 2.31 x 0.37 in)', '140', '4.94', 'Micro-SIM', 'LED-backlit IPS LCD  capacitive touchscreen  16M colors', '3.5 inches (~54.0% screen-to-body ratio)', 'iOS 5| upgradable to iOS 9.3.5', 'Dual-core 1.0 GHz Cortex-A9', 'PowerVR SGX543MP2', 'No', '8/16/32/64 GB', '512 MB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '4.0| A2DP| LE', 'Yes with A-GPS GLONASS', 'None', 'No', '2.0', 'Accelerometer| gyro| proximity| compass', 'Black| White', '190.0', 'http://cdn2.gsmarena.com/vv/bigpic/apple-iphone-4s-new.jpg'),
(76, 'iPhone-4', 'Apple', '640 x 960 pixels (~330 ppi pixel density)', '[\'Single\', \'5\', \'MP,\', \'f/2.8,\', \'1/3.2\',\', \'1.75µm,\', \'AF\']', '[\'Single\', \'VGA,\', \'videocalling\', \'over\', \'Wi-Fi\', \'only\']', 'Apple A4', '[\'8GB\', \'512MB\', \'RAM,\', \'16GB\', \'512MB\', \'RAM,\', \'32GB\', \'512MB\', \'RAM\']', 'Non-removable Li-Po 1420 mAh battery', 'None', 'GSM / HSPA', 'GSM 850 / 900 / 1800 / 1900 ', 'HSDPA 850 / 900 / 1900 / 2100 ', 'None', 'HSPA 7.2/5.76 Mbps', 'Class 10', 'Class 10', '2010  June', 'Available. Released 2010  June', '115.2 x 58.6 x 9.3 mm (4.54 x 2.31 x 0.37 in)', '137', '4.83', 'Micro-SIM', 'LED-backlit IPS LCD  capacitive touchscreen  16M colors', '3.5 inches (~54.0% screen-to-body ratio)', 'iOS 4| upgradable to iOS 7.1.2', '1.0 GHz Cortex-A8', 'PowerVR SGX535', 'No', '8/16/32 GB', '512 MB RAM', 'Yes', 'Yes', 'Wi-Fi 802.11 b/g/n| hotspot', '2.1| A2DP', 'Yes with A-GPS', 'None', 'No', '2.0', 'Accelerometer| gyro| proximity| compass', 'Black| White', '200.0', 'http://cdn2.gsmarena.com/vv/bigpic/apple-iphone-4-ofic-final.jpg'),
(77, 'oppo_f11', 'oppo', 'IPS LCD capacitive touchscreen  16M colors', '[\'Single\', \'8\', \'MP,\', \'AF\']', '[\'Single\', \'8\', \'MP,\', \'AF\']', NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_description` varchar(45) DEFAULT NULL,
  `post_img` varchar(200) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_description`, `post_img`, `store_id`) VALUES
(2, 'post2', 'post222', 29),
(12, 'amr', 'postImages/store-30/Kuehlregal_USA.jpg', 30);

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `store_name` varchar(45) DEFAULT NULL,
  `store_descreption` varchar(45) DEFAULT NULL,
  `store_img` varchar(200) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `latitude` double DEFAULT 0,
  `longitude` double DEFAULT 0,
  `rate` int(1) DEFAULT 0,
  `rateCounter` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `store`
--

INSERT INTO `store` (`store_id`, `store_name`, `store_descreption`, `store_img`, `address`, `latitude`, `longitude`, `rate`, `rateCounter`, `user_id`) VALUES
(29, 'amr', 'amr', 'storeImages/29-offa.png', 'amr', 0, 0, 1, 5, 61),
(30, 'store555', 'store5555desccc', NULL, 'storeaddress55555', 0, 0, 0, 0, 62),
(31, 'store5', 'ay7aga', NULL, 'fakee', 0, 0, 0, 0, 64),
(32, 'store5', 'ay7aga', NULL, 'fakee', 0, 0, 0, 0, 66),
(33, 'store5', 'ay7aga', NULL, 'fakee', 0, 0, 0, 0, 68);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `age` varchar(45) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `lang` double DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `user_img` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password`, `address`, `age`, `type`, `lang`, `lat`, `user_img`) VALUES
(57, 'user1', 'user1@gmail.com', '123', 'examp', '123', 0, NULL, NULL, NULL),
(58, 'user1', 'user1@gmail.com', '123', 'examp', '123', 0, NULL, NULL, NULL),
(59, 'user1', 'user1@gmail.com', '123', 'examp', '123', 0, NULL, NULL, NULL),
(60, 'user1', 'user1@gmail.com', '123', 'examp', '123', 1, NULL, NULL, NULL),
(61, 'شة', 'user1@gmail.com', '123', 'examp', '123', 1, NULL, NULL, NULL),
(62, 'tesssssssssssst', 'user1@gmail.com', '123', 'examp', '123', 1, NULL, NULL, NULL),
(63, 'user1', 'user1@gmail.com', '123', 'examp', '123', 0, NULL, NULL, NULL),
(64, 'user1', 'user1@gmail.com', '123', 'examp', '123', 1, NULL, NULL, NULL),
(65, 'user1', 'user1@gmail.com', '123', 'examp', '123', 0, NULL, NULL, NULL),
(66, 'user1', 'user1@gmail.com', '123', 'examp', '123', 1, NULL, NULL, NULL),
(67, 'user1', 'user1@gmail.com', '123', 'examp', '123', 0, NULL, NULL, NULL),
(68, 'user1', 'user1@gmail.com', '123', 'examp', '123', 1, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_name`) USING BTREE,
  ADD KEY `cat_id` (`cat_id`) USING BTREE;

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comment_id`),
  ADD KEY `post_id_idx` (`post_id`),
  ADD KEY `user_id_idx` (`user_id`);

--
-- Indexes for table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`mobile_id`),
  ADD KEY `category_name` (`category_name`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `store_id_idx` (`store_id`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `mobile`
--
ALTER TABLE `mobile`
  MODIFY `mobile_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `post_id` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `mobile`
--
ALTER TABLE `mobile`
  ADD CONSTRAINT `mobile_ibfk_1` FOREIGN KEY (`category_name`) REFERENCES `category` (`cat_name`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `store_id` FOREIGN KEY (`store_id`) REFERENCES `store` (`store_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
