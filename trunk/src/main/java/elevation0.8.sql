-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 23, 2012 at 12:01 PM
-- Server version: 5.5.16
-- PHP Version: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `elevation`
--

-- --------------------------------------------------------

--
-- Table structure for table `complaint`
--

DROP TABLE IF EXISTS `complaint`;
CREATE TABLE IF NOT EXISTS `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
CREATE TABLE IF NOT EXISTS `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(63) NOT NULL,
  `iso2` varchar(2) DEFAULT NULL,
  `iso3` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=249 ;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `iso2`, `iso3`) VALUES
(1, 'VIET NAM', 'VN', 'VNM'),
(2, 'AFGHANISTAN', 'AF', 'AFG'),
(3, 'ALAND ISLANDS', 'AX', 'ALA'),
(4, 'ALBANIA', 'AL', 'ALB'),
(5, 'ALGERIA', 'DZ', 'DZA'),
(6, 'AMERICAN SAMOA', 'AS', 'ASM'),
(7, 'ANDORRA', 'AD', 'AND'),
(8, 'ANGOLA', 'AO', 'AGO'),
(9, 'ANGUILLA', 'AI', 'AIA'),
(10, 'ANTARCTICA', 'AQ', ''),
(11, 'ANTIGUA AND BARBUDA', 'AG', 'ATG'),
(12, 'ARGENTINA', 'AR', 'ARG'),
(13, 'ARMENIA', 'AM', 'ARM'),
(14, 'ARUBA', 'AW', 'ABW'),
(15, 'AUSTRALIA', 'AU', 'AUS'),
(16, 'AUSTRIA', 'AT', 'AUT'),
(17, 'AZERBAIJAN', 'AZ', 'AZE'),
(18, 'BAHAMAS', 'BS', 'BHS'),
(19, 'BAHRAIN', 'BH', 'BHR'),
(20, 'BANGLADESH', 'BD', 'BGD'),
(21, 'BARBADOS', 'BB', 'BRB'),
(22, 'BELARUS', 'BY', 'BLR'),
(23, 'BELGIUM', 'BE', 'BEL'),
(24, 'BELIZE', 'BZ', 'BLZ'),
(25, 'BENIN', 'BJ', 'BEN'),
(26, 'BERMUDA', 'BM', 'BMU'),
(27, 'BHUTAN', 'BT', 'BTN'),
(28, 'BOLIVIA, PLURINATIONAL STATE OF', 'BO', 'BOL'),
(29, 'BONAIRE, SINT EUSTATIUS AND SABA', 'BQ', 'BES'),
(30, 'BOSNIA AND HERZEGOVINA', 'BA', 'BIH'),
(31, 'BOTSWANA', 'BW', 'BWA'),
(32, 'BOUVET ISLAND', 'BV', ''),
(33, 'BRAZIL', 'BR', 'BRA'),
(34, 'BRITISH INDIAN OCEAN TERRITORY', 'IO', ''),
(35, 'BRUNEI DARUSSALAM', 'BN', 'BRN'),
(36, 'BULGARIA', 'BG', 'BGR'),
(37, 'BURKINA FASO', 'BF', 'BFA'),
(38, 'BURUNDI', 'BI', 'BDI'),
(39, 'CAMBODIA', 'KH', 'KHM'),
(40, 'CAMEROON', 'CM', 'CMR'),
(41, 'CANADA', 'CA', 'CAN'),
(42, 'CAPE VERDE', 'CV', 'CPV'),
(43, 'CAYMAN ISLANDS', 'KY', 'CYM'),
(44, 'CENTRAL AFRICAN REPUBLIC', 'CF', 'CAF'),
(45, 'CHAD', 'TD', 'TCD'),
(46, 'CHILE', 'CL', 'CHL'),
(47, 'CHINA', 'CN', 'CHN'),
(48, 'CHRISTMAS ISLAND', 'CX', ''),
(49, 'COCOS (KEELING) ISLANDS', 'CC', ''),
(50, 'COLOMBIA', 'CO', 'COL'),
(51, 'COMOROS', 'KM', 'COM'),
(52, 'CONGO', 'CG', 'COD'),
(53, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', ''),
(54, 'COOK ISLANDS', 'CK', 'COK'),
(55, 'COSTA RICA', 'CR', 'CRI'),
(56, 'COTE D''IVOIRE', 'CI', 'CIV'),
(57, 'CROATIA', 'HR', 'HRV'),
(58, 'CUBA', 'CU', 'CUB'),
(59, 'CURACAO', 'CW', 'CUW'),
(60, 'CYPRUS', 'CY', 'CYP'),
(61, 'CZECH REPUBLIC', 'CZ', 'CZE'),
(62, 'DENMARK', 'DK', 'DNK'),
(63, 'DJIBOUTI', 'DJ', 'DJI'),
(64, 'DOMINICA', 'DM', 'DMA'),
(65, 'DOMINICAN REPUBLIC', 'DO', 'DOM'),
(66, 'ECUADOR', 'EC', 'ECU'),
(67, 'EGYPT', 'EG', 'EGY'),
(68, 'EL SALVADOR', 'SV', 'SLV'),
(69, 'EQUATORIAL GUINEA', 'GQ', 'GNQ'),
(70, 'ERITREA', 'ER', 'ERI'),
(71, 'ESTONIA', 'EE', 'EST'),
(72, 'ETHIOPIA', 'ET', 'ETH'),
(73, 'FALKLAND ISLANDS (MALVINAS)', 'FK', 'FLK'),
(74, 'FAROE ISLANDS', 'FO', 'FRO'),
(75, 'FIJI', 'FJ', 'FJI'),
(76, 'FINLAND', 'FI', 'FIN'),
(77, 'FRANCE', 'FR', 'FRA'),
(78, 'FRENCH GUIANA', 'GF', 'GUF'),
(79, 'FRENCH POLYNESIA', 'PF', 'PYF'),
(80, 'FRENCH SOUTHERN TERRITORIES', 'TF', ''),
(81, 'GABON', 'GA', 'GAB'),
(82, 'GAMBIA', 'GM', 'GMB'),
(83, 'GEORGIA', 'GE', 'GEO'),
(84, 'GERMANY', 'DE', 'DEU'),
(85, 'GHANA', 'GH', 'GHA'),
(86, 'GIBRALTAR', 'GI', 'GIB'),
(87, 'GREECE', 'GR', 'GRC'),
(88, 'GREENLAND', 'GL', 'GRL'),
(89, 'GRENADA', 'GD', 'GRD'),
(90, 'GUADELOUPE', 'GP', 'GLP'),
(91, 'GUAM', 'GU', 'GUM'),
(92, 'GUATEMALA', 'GT', 'GTM'),
(93, 'GUERNSEY', 'GG', ''),
(94, 'GUINEA', 'GN', 'GIN'),
(95, 'GUINEA-BISSAU', 'GW', 'GNB'),
(96, 'GUYANA', 'GY', 'GUY'),
(97, 'HAITI', 'HT', 'HTI'),
(98, 'HEARD ISLAND AND MCDONALD ISLANDS', 'HM', ''),
(99, 'HOLY SEE (VATICAN CITY STATE)', 'VA', 'VAT'),
(100, 'HONDURAS', 'HN', 'HND'),
(101, 'HONG KONG', 'HK', 'HKG'),
(102, 'HUNGARY', 'HU', 'HUN'),
(103, 'ICELAND', 'IS', 'ISL'),
(104, 'INDIA', 'IN', 'IND'),
(105, 'INDONESIA', 'ID', 'IDN'),
(106, 'IRAN, ISLAMIC REPUBLIC OF', 'IR', 'IRN'),
(107, 'IRAQ', 'IQ', 'IRQ'),
(108, 'IRELAND', 'IE', 'IRL'),
(109, 'ISLE OF MAN', 'IM', 'IMN'),
(110, 'ISRAEL', 'IL', 'ISR'),
(111, 'ITALY', 'IT', 'ITA'),
(112, 'JAMAICA', 'JM', 'JAM'),
(113, 'JAPAN', 'JP', 'JPN'),
(114, 'JERSEY', 'JE', ''),
(115, 'JORDAN', 'JO', 'JOR'),
(116, 'KAZAKHSTAN', 'KZ', 'KAZ'),
(117, 'KENYA', 'KE', 'KEN'),
(118, 'KIRIBATI', 'KI', 'KIR'),
(119, 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'KP', 'PRK'),
(120, 'KOREA, REPUBLIC OF', 'KR', 'KOR'),
(121, 'KUWAIT', 'KW', 'KWT'),
(122, 'KYRGYZSTAN', 'KG', 'KGZ'),
(123, 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'LA', 'LAO'),
(124, 'LATVIA', 'LV', 'LVA'),
(125, 'LEBANON', 'LB', 'LBN'),
(126, 'LESOTHO', 'LS', 'LSO'),
(127, 'LIBERIA', 'LR', 'LBR'),
(128, 'LIBYAN ARAB JAMAHIRIYA', 'LY', 'LBY'),
(129, 'LIECHTENSTEIN', 'LI', 'LIE'),
(130, 'LITHUANIA', 'LT', 'LTU'),
(131, 'LUXEMBOURG', 'LU', 'LUX'),
(132, 'MACAO', 'MO', 'MAC'),
(133, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', 'MKD'),
(134, 'MADAGASCAR', 'MG', 'MDG'),
(135, 'MALAWI', 'MW', 'MWI'),
(136, 'MALAYSIA', 'MY', 'MYS'),
(137, 'MALDIVES', 'MV', 'MDV'),
(138, 'MALI', 'ML', 'MLI'),
(139, 'MALTA', 'MT', 'MLT'),
(140, 'MARSHALL ISLANDS', 'MH', 'MHL'),
(141, 'MARTINIQUE', 'MQ', 'MTQ'),
(142, 'MAURITANIA', 'MR', 'MRT'),
(143, 'MAURITIUS', 'MU', 'MUS'),
(144, 'MAYOTTE', 'YT', ''),
(145, 'MEXICO', 'MX', 'MEX'),
(146, 'MICRONESIA, FEDERATED STATES OF', 'FM', 'FSM'),
(147, 'MOLDOVA, REPUBLIC OF', 'MD', 'MDA'),
(148, 'MONACO', 'MC', 'MCO'),
(149, 'MONGOLIA', 'MN', 'MNG'),
(150, 'MONTENEGRO', 'ME', 'MNE'),
(151, 'MONTSERRAT', 'MS', 'MSR'),
(152, 'MOROCCO', 'MA', 'MAR'),
(153, 'MOZAMBIQUE', 'MZ', 'MOZ'),
(154, 'MYANMAR', 'MM', 'MMR'),
(155, 'NAMIBIA', 'NA', 'NAM'),
(156, 'NAURU', 'NR', 'NRU'),
(157, 'NEPAL', 'NP', 'NPL'),
(158, 'NETHERLANDS', 'NL', 'NLD'),
(159, 'NEW CALEDONIA', 'NC', 'NCL'),
(160, 'NEW ZEALAND', 'NZ', 'NZL'),
(161, 'NICARAGUA', 'NI', 'NIC'),
(162, 'NIGER', 'NE', 'NER'),
(163, 'NIGERIA', 'NG', 'NGA'),
(164, 'NIUE', 'NU', 'NIU'),
(165, 'NORFOLK ISLAND', 'NF', 'NFK'),
(166, 'NORTHERN MARIANA ISLANDS', 'MP', 'MNP'),
(167, 'NORWAY', 'NO', 'NOR'),
(168, 'OMAN', 'OM', 'OMN'),
(169, 'PAKISTAN', 'PK', 'PAK'),
(170, 'PALAU', 'PW', 'PLW'),
(171, 'PALESTINIAN TERRITORY, OCCUPIED', 'PS', 'PSE'),
(172, 'PANAMA', 'PA', 'PAN'),
(173, 'PAPUA NEW GUINEA', 'PG', 'PNG'),
(174, 'PARAGUAY', 'PY', 'PRY'),
(175, 'PERU', 'PE', 'PER'),
(176, 'PHILIPPINES', 'PH', 'PHL'),
(177, 'PITCAIRN', 'PN', 'PCN'),
(178, 'POLAND', 'PL', 'POL'),
(179, 'PORTUGAL', 'PT', 'PRT'),
(180, 'PUERTO RICO', 'PR', 'PRI'),
(181, 'QATAR', 'QA', 'QAT'),
(182, 'REUNION', 'RE', 'REU'),
(183, 'ROMANIA', 'RO', 'ROU'),
(184, 'RUSSIAN FEDERATION', 'RU', 'RUS'),
(185, 'RWANDA', 'RW', 'RWA'),
(186, 'SAINT BARTHELEMY', 'BL', 'BLM'),
(187, 'SAINT HELENA, ASCENSION AND TRISTAN DA CUNHA', 'SH', 'SHN'),
(188, 'SAINT KITTS AND NEVIS', 'KN', 'KNA'),
(189, 'SAINT LUCIA', 'LC', 'LCA'),
(190, 'SAINT MARTIN (FRENCH PART)', 'MF', ''),
(191, 'SAINT PIERRE AND MIQUELON', 'PM', 'SPM'),
(192, 'SAINT VINCENT AND THE GRENADINES', 'VC', 'VCT'),
(193, 'SAMOA', 'WS', 'WSM'),
(194, 'SAN MARINO', 'SM', 'SMR'),
(195, 'SAO TOME AND PRINCIPE', 'ST', 'STP'),
(196, 'SAUDI ARABIA', 'SA', 'SAU'),
(197, 'SENEGAL', 'SN', 'SEN'),
(198, 'SERBIA', 'RS', 'SRB'),
(199, 'SEYCHELLES', 'SC', 'SYC'),
(200, 'SIERRA LEONE', 'SL', 'SLE'),
(201, 'SINGAPORE', 'SG', 'SGP'),
(202, 'SINT MAARTEN (DUTCH PART)', 'SX', ''),
(203, 'SLOVAKIA', 'SK', 'SVK'),
(204, 'SLOVENIA', 'SI', 'SVN'),
(205, 'SOLOMON ISLANDS', 'SB', 'SLB'),
(206, 'SOMALIA', 'SO', 'SOM'),
(207, 'SOUTH AFRICA', 'ZA', 'ZAF'),
(208, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'GS', ''),
(209, 'SPAIN', 'ES', 'ESP'),
(210, 'SRI LANKA', 'LK', 'LKA'),
(211, 'SUDAN', 'SD', 'SDN'),
(212, 'SURINAME', 'SR', 'SUR'),
(213, 'SVALBARD AND JAN MAYEN', 'SJ', 'SJM'),
(214, 'SWAZILAND', 'SZ', 'SWZ'),
(215, 'SWEDEN', 'SE', 'SWE'),
(216, 'SWITZERLAND', 'CH', 'CHE'),
(217, 'SYRIAN ARAB REPUBLIC', 'SY', 'SYR'),
(218, 'TAIWAN, PROVINCE OF CHINA', 'TW', ''),
(219, 'TAJIKISTAN', 'TJ', 'TJK'),
(220, 'TANZANIA, UNITED REPUBLIC OF', 'TZ', 'TZA'),
(221, 'THAILAND', 'TH', 'THA'),
(222, 'TIMOR-LESTE', 'TL', 'TLS'),
(223, 'TOGO', 'TG', 'TGO'),
(224, 'TOKELAU', 'TK', 'TKL'),
(225, 'TONGA', 'TO', 'TON'),
(226, 'TRINIDAD AND TOBAGO', 'TT', 'TTO'),
(227, 'TUNISIA', 'TN', 'TUN'),
(228, 'TURKEY', 'TR', 'TUR'),
(229, 'TURKMENISTAN', 'TM', 'TKM'),
(230, 'TURKS AND CAICOS ISLANDS', 'TC', 'TCA'),
(231, 'TUVALU', 'TV', 'TUV'),
(232, 'UGANDA', 'UG', 'UGA'),
(233, 'UKRAINE', 'UA', 'UKR'),
(234, 'UNITED ARAB EMIRATES', 'AE', 'ARE'),
(235, 'UNITED KINGDOM', 'GB', 'GBR'),
(236, 'UNITED STATES', 'US', 'USA'),
(237, 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', ''),
(238, 'URUGUAY', 'UY', 'URY'),
(239, 'UZBEKISTAN', 'UZ', 'UZB'),
(240, 'VANUATU', 'VU', 'VUT'),
(241, 'VENEZUELA, BOLIVARIAN REPUBLIC OF', 'VE', 'VEN'),
(242, 'VIRGIN ISLANDS, BRITISH', 'VG', 'VGB'),
(243, 'VIRGIN ISLANDS, U.S.', 'VI', 'VIR'),
(244, 'WALLIS AND FUTUNA', 'WF', 'WLF'),
(245, 'WESTERN SAHARA', 'EH', 'ESH'),
(246, 'YEMEN', 'YE', 'YEM'),
(247, 'ZAMBIA', 'ZM', 'ZMB'),
(248, 'ZIMBABWE', 'ZW', 'ZWE');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `rating` int(11) NOT NULL DEFAULT '10',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `description`, `rating`, `created`) VALUES
(2, 'test', 'a@b.com', 'this is a fucking test', 1, '2012-11-19 05:33:39'),
(3, 'asd gsg', 'a@bfd.com', 'asd  fd hdfhngn fn34 y4ehrjtr', 10, '2012-11-19 05:33:39'),
(4, '123asd gsg', '5435a@bfd.com', ' 64564asd  fd hdfhngn fn34 y4ehrjtr', 7, '2012-11-19 05:34:32'),
(5, 'Long', 'hunglong@dynabyte.vn', '34', 5, '2012-11-19 10:10:20'),
(6, '235 3yrtjhrj ', '5435a@bfd.com', '  fdhfgj hjk jk tykjty', 9, '2012-11-20 10:29:44'),
(8, 'Long prao ', 'a@b.com', 'bbbbbbbbbbb', 10, '2012-11-23 08:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone` varchar(63) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `payment_id` (`payment_id`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `payment_id`, `name`, `address`, `city`, `country_id`, `phone`, `status`, `created`) VALUES
(1, 1, 1, 'Cash on Delivery', NULL, NULL, 1, NULL, 0, '2012-11-20 09:18:27'),
(2, 1, 1, NULL, NULL, NULL, 1, NULL, 0, '2012-11-20 10:31:52'),
(5, 1, 1, NULL, NULL, NULL, 1, NULL, 0, '2012-11-20 10:38:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

DROP TABLE IF EXISTS `order_product`;
CREATE TABLE IF NOT EXISTS `order_product` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`order_id`,`product_id`),
  KEY `product_id` (`product_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(5, 1, 1, 100.5),
(5, 2, 2, 200.9);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE IF NOT EXISTS `payment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `name`, `status`) VALUES
(1, 'Cash on Delivery', 1),
(2, 'Paypal', 1),
(3, 'Bank Transfer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created`) VALUES
(1, 'Product 1', 'This is a desc', 1000, 1, '2012-11-20 09:18:56'),
(2, 'Product 2', 'Not a description', 600, 1, '2012-11-20 09:19:00'),
(3, 'P 3', 'Test product', 800, 1, '2012-11-22 07:45:55'),
(5, '4 product', 'Ho hoa hah a hgsg ', 900, 1, '2012-11-22 07:46:42');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

DROP TABLE IF EXISTS `project`;
CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(63) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `phone` varchar(63) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '1',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  KEY `country_id` (`country_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `name`, `address`, `city`, `country_id`, `phone`, `company`, `type`, `status`, `created`) VALUES
(1, 'longpro', 'a@b.com', '202cb962ac59075b964b07152d234b70', 'Long', 'asd 123', NULL, 1, NULL, NULL, 0, 0, '2012-11-20 08:48:36');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `complaint`
--
ALTER TABLE `complaint`
  ADD CONSTRAINT `complaint_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `complaint_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
