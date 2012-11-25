-- phpMyAdmin SQL Dump
-- version 3.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 25, 2012 at 09:17 PM
-- Server version: 5.5.25a
-- PHP Version: 5.4.4

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
(2, 'test', 'a@b.com', 'this is a  test', 1, '2012-11-19 05:33:39'),
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `payment_id`, `name`, `address`, `city`, `country_id`, `phone`, `status`, `created`) VALUES
(1, 1, 2, 'The Missing Corner', 'Cat Linh', 'HN', 1, '0123456789', 0, '2012-11-25 20:16:39');

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
(1, 4, 1, 1200),
(1, 6, 3, 1100),
(1, 9, 1, 2000);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `status`, `created`) VALUES
(1, 'Sightseeing Elevator', 'Vivamus tincidunt velit varius ante aliquam rhoncus. Mauris non cursus arcu. Duis vel aliquet mauris. Duis gravida, urna at ullamcorper lobortis, dui diam hendrerit ante, eget varius augue quam quis mauris. Sed quis ligula hendrerit libero viverra venenatis. Maecenas ut dictum massa. Nam venenatis, orci quis rhoncus rhoncus, leo ipsum suscipit massa, quis faucibus nunc libero eget risus. Mauris posuere mi at mauris gravida scelerisque. Vivamus pharetra dapibus nulla. Sed odio justo, consequat et pulvinar eu, vestibulum sed metus. Proin aliquam erat et quam sollicitudin pharetra. Cras augue nibh, sagittis ac ullamcorper vel, varius vel arcu. Praesent nec justo sed sapien luctus lacinia. Etiam dictum lobortis leo eget ullamcorper. Etiam vel rutrum felis. Donec mattis molestie quam, vitae tincidunt dui vulputate sit amet.\r\n<br><br>\r\nNulla eu justo ac leo facilisis tincidunt. Nullam vel felis ipsum, sit amet semper leo. Morbi vel arcu suscipit tortor hendrerit tristique id quis odio. Nullam eget sapien ut diam pretium congue at at est. Morbi facilisis arcu eget erat dignissim sed adipiscing dui tristique. Vestibulum vehicula nisi turpis, ac ultrices lacus. Curabitur viverra varius lorem sed egestas.\r\n<br><br>\r\nUt venenatis sollicitudin tempus. Aliquam venenatis odio nisl. Pellentesque id risus quis velit tincidunt condimentum id ac velit. Proin libero mauris, rhoncus nec vehicula nec, pharetra in urna. Proin ut dolor at nisi suscipit sagittis. Quisque ullamcorper, dolor sed luctus rutrum, enim eros blandit risus, vitae eleifend risus nisl sed elit. Morbi cursus aliquam tempus. In quis mi tortor. Donec pellentesque viverra mi nec cursus. Nullam aliquam condimentum dolor, ac ullamcorper libero dictum quis. Aliquam erat volutpat. Aenean sit amet cursus justo. Nulla placerat purus nec magna fringilla aliquam.', 1500, 1, '2012-11-25 19:42:18'),
(2, 'Electric Elevator For High Rise Buildings ', 'Aliquam erat volutpat. Nullam dictum mi sed lacus sagittis pulvinar. Ut odio ante, sodales sit amet aliquet vel, placerat non nisi. Pellentesque viverra turpis nec lorem ultrices ac fringilla lacus consectetur. Integer adipiscing porttitor enim in accumsan. Etiam ut felis enim. Praesent dictum nulla id sapien tincidunt id sagittis neque volutpat. Phasellus vestibulum tellus non mauris placerat egestas a quis elit. Curabitur ultricies egestas ornare. Phasellus euismod rhoncus diam vel lobortis. Nulla placerat nulla sed ligula congue tristique. Cras tempus sagittis ligula non mollis. Integer massa nulla, accumsan sed imperdiet vel, bibendum nec nulla. In tincidunt consequat sodales.\r\n<br><br>\r\nVivamus non tristique ipsum. Pellentesque lacus mi, imperdiet nec sollicitudin vitae, pellentesque non leo. Fusce nisl lectus, faucibus ac vulputate sit amet, commodo non libero. In feugiat dictum nisi eu placerat. Aliquam vel odio sapien, nec varius magna. Maecenas quis risus tortor, in semper elit. Phasellus sit amet quam arcu, non ornare diam. Vivamus non neque ut nibh rhoncus accumsan. Morbi eros dui, venenatis non tristique sed, porta non sem. Nunc ut ipsum id augue lobortis faucibus.\r\n<br><br>\r\nPellentesque gravida velit vitae arcu ornare iaculis. Quisque mattis nisl vel libero hendrerit tincidunt. Nulla cursus interdum interdum. Praesent augue purus, molestie a lacinia tristique, hendrerit nec velit. Sed nec sodales libero. Donec sed eros tortor, sed tempor mi. Morbi malesuada dolor massa, vel egestas nunc. Fusce vulputate leo sed felis cursus consequat. Phasellus sagittis nisl id arcu cursus sed placerat lacus hendrerit. Praesent feugiat mattis est ac dapibus.', 1000, 1, '2012-11-25 20:07:13'),
(3, 'Observation Elevator BEX01', 'Sed ut massa in risus lacinia tempor at sit amet quam. Donec vehicula viverra elit, id volutpat leo vulputate fringilla. Vivamus nec tellus lorem, vitae faucibus orci. Proin ultricies, mi sed iaculis ultricies, urna massa blandit erat, quis euismod nunc nunc a justo. Vestibulum eget vehicula metus. Nulla condimentum adipiscing ligula, in euismod purus facilisis quis. Nulla dictum cursus consectetur. Proin vitae imperdiet nibh.\r\n<br><br>\r\nSed pretium leo nec leo feugiat eget fermentum justo porttitor. Suspendisse semper purus id mauris faucibus dictum. Pellentesque nibh nunc, fringilla vel congue in, mollis et elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vitae semper velit. Mauris augue lorem, mollis nec euismod at, lacinia quis tellus. Ut sagittis leo sit amet velit imperdiet vitae cursus nisi tempor.\r\n<br><br>\r\nDuis ac quam nisl. Nulla convallis varius felis non auctor. Cras gravida varius ipsum, a ultrices quam euismod vitae. Donec lacus ligula, dignissim sit amet tincidunt ultrices, pulvinar et neque. Nam eu mi eget diam tristique mollis. Morbi magna nibh, euismod nec ornare vitae, tempus in arcu. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Mauris arcu nulla, placerat sed faucibus quis, eleifend hendrerit risus.', 900, 1, '2012-11-25 20:07:56'),
(4, 'Awesome Elevator', 'Sed vulputate congue condimentum. Praesent consequat vulputate auctor. Suspendisse at ante a orci elementum tincidunt. Suspendisse fringilla mi lorem. Ut blandit erat vitae felis lobortis dignissim. In sed iaculis leo. Vivamus fringilla purus a eros varius feugiat. Donec tincidunt mauris id orci tristique vitae tempor diam eleifend. Morbi cursus augue a risus placerat eget mollis orci luctus. Vestibulum eget nisl non augue elementum mollis. In hac habitasse platea dictumst. Donec eleifend porttitor metus, vitae commodo turpis bibendum non. Sed fringilla, nunc ut dapibus aliquam, odio magna suscipit velit, ac faucibus enim erat vitae enim. Praesent euismod interdum lacus et scelerisque.\r\n<br><br>\r\nDonec dignissim imperdiet felis at sollicitudin. Vivamus non massa ipsum. Nulla in purus non enim tincidunt venenatis eget at neque. Nam eget pretium urna. Pellentesque purus mauris, accumsan nec interdum sed, semper at velit. Curabitur quis nisi in ligula aliquam scelerisque at nec arcu. Nam pulvinar dapibus justo, ut fermentum tellus pellentesque et. Vivamus interdum aliquam molestie. In a lectus a tellus aliquam rutrum. Ut et justo in felis ultricies gravida at at sem. Vivamus aliquet varius turpis, sit amet fringilla nibh fringilla quis. Donec ut pulvinar odio.\r\n<br><br>\r\nMorbi nec enim dui. Sed at accumsan mi. Quisque at neque ac erat porta suscipit sit amet non massa. In hac habitasse platea dictumst. Donec dapibus iaculis enim, ut ullamcorper enim venenatis et. Nulla adipiscing arcu at nibh elementum posuere. Vivamus consequat, metus et dictum aliquet, purus orci tristique quam, quis semper odio tellus elementum ligula. Vivamus metus est, dignissim ac bibendum id, hendrerit sodales quam. Integer accumsan condimentum ligula eget malesuada. Duis lobortis aliquet molestie. Curabitur sapien ligula, ultrices vel pulvinar id, gravida ut quam. Duis velit sem, cursus quis fermentum et, imperdiet non nisi. Curabitur ac tellus enim, sit amet vestibulum diam.', 1200, 1, '2012-11-25 20:08:39'),
(5, 'Elevator 007', 'Etiam risus augue, posuere aliquet accumsan ut, tristique eu libero. Vivamus varius magna quis metus mattis nec dictum nibh fermentum. Integer pulvinar, sem ut rhoncus interdum, nisl mauris semper ligula, varius aliquam felis nulla a neque. Nullam porta ipsum eleifend odio lobortis molestie. Donec interdum arcu vitae diam interdum vehicula. Morbi lobortis arcu at quam dapibus et commodo nisl suscipit. Nullam eu nibh metus, at iaculis turpis. Cras eget nisl at metus suscipit luctus sit amet eget magna. Sed pellentesque erat sollicitudin mi ullamcorper ut mollis turpis pharetra. Curabitur non libero nibh. Quisque id dapibus dolor. In hac habitasse platea dictumst. Suspendisse feugiat ligula sit amet eros hendrerit eget gravida tortor dictum.\r\n<br><br>\r\nMorbi faucibus magna quis elit imperdiet ullamcorper. Donec eleifend nisl a risus euismod porttitor. Nullam ullamcorper justo eu nisl consequat dignissim. Donec ipsum leo, mollis nec vehicula eu, rutrum quis nibh. Curabitur et erat massa. Curabitur venenatis ornare mauris, in tincidunt metus dignissim sit amet. Proin vestibulum rhoncus euismod. Aenean at dui hendrerit erat accumsan blandit. Nulla ut nulla quis purus accumsan suscipit luctus ac tellus. Ut vitae ullamcorper libero. Integer quis nisi ac augue aliquet dapibus sed quis sem.\r\n<br><br>\r\nIn ut mollis lorem. Vivamus posuere egestas enim ac pulvinar. Mauris hendrerit lacus in libero mollis venenatis. Etiam porta odio a arcu volutpat consectetur sed eget sapien. Praesent faucibus tincidunt erat nec elementum. Phasellus id faucibus nulla. Mauris sapien est, eleifend quis viverra eget, eleifend ut nunc. Nunc feugiat nunc at tortor convallis consectetur. Cras eu pretium nunc. Sed auctor interdum dolor ut imperdiet.', 600, 1, '2012-11-25 20:09:17'),
(6, 'Passenger Elevator XNK 008', 'Quisque aliquam semper ligula, at condimentum arcu interdum cursus. Quisque iaculis ante vitae risus tempus placerat ac at est. Donec sit amet iaculis nibh. Sed eleifend pellentesque tristique. Aliquam erat volutpat. Quisque accumsan auctor quam, et sagittis nisl ultrices eget. Phasellus dapibus condimentum massa at luctus. Donec sed metus non risus interdum pulvinar. Morbi facilisis, dolor eu bibendum rhoncus, lacus ipsum lacinia justo, non pharetra augue elit ut dolor. Nullam condimentum ornare tempor. Sed nibh sem, tincidunt nec euismod vel, suscipit eget risus. Mauris et condimentum urna. Duis in mollis erat. Donec laoreet fermentum diam eu eleifend. In ac malesuada elit.\r\n<br><br>\r\nVestibulum adipiscing adipiscing elementum. Morbi ornare nisl non leo venenatis mollis. Etiam sed sem in nisi venenatis viverra eu quis sapien. Nunc at tincidunt lectus. Integer eu nulla nisl. Fusce et ante non odio faucibus fermentum. Vestibulum sed velit elit, vel vehicula elit. Nullam malesuada justo sed mi suscipit iaculis. Aenean rhoncus suscipit ante non dapibus. Donec suscipit ante nec nisi mattis porttitor. Curabitur bibendum adipiscing adipiscing. Nunc tempus eros ultrices mauris fermentum in ultricies dui pharetra. Cras ornare volutpat leo a vestibulum.\r\n<br><br>\r\nCurabitur tempor sollicitudin tortor in iaculis. Nulla pulvinar augue sit amet augue varius lacinia. Duis varius dui ut felis ultricies porttitor. Integer urna mauris, feugiat vel iaculis in, aliquet accumsan erat. Ut in sagittis nisl. Quisque ut lectus vitae neque molestie egestas vel in nisi. Maecenas pulvinar eleifend tempor. Donec eu dolor felis. Quisque venenatis sem in leo aliquam sollicitudin. Aenean scelerisque, sapien lobortis sollicitudin bibendum, magna arcu porttitor risus, eu vulputate orci magna sed magna. In molestie velit vel quam semper dapibus ut sed purus. In aliquet fermentum condimentum. Cras eleifend condimentum elit, facilisis ullamcorper odio dignissim eu.', 1100, 1, '2012-11-25 20:09:52'),
(7, 'Machine Room Less Elevator', 'Vestibulum dui dui, scelerisque at ornare eu, lacinia vel nulla. Aliquam ut lorem nunc, non venenatis sem. In bibendum ipsum ut libero interdum vitae tincidunt ligula hendrerit. Nulla mollis bibendum pulvinar. Nullam magna nulla, tempus posuere adipiscing sit amet, suscipit a ipsum. Praesent molestie libero a lorem cursus sit amet suscipit ante tincidunt. Nam et eros vitae risus gravida vulputate ut id tellus. Aliquam imperdiet tincidunt mi, in malesuada risus viverra nec. Vestibulum in metus nec leo laoreet viverra. Pellentesque vel libero lacus, nec auctor sem. Donec tincidunt nibh in felis pellentesque vel pretium mi pharetra. Donec sollicitudin blandit ultrices. Quisque nec nibh tortor, non iaculis orci.\r\n<br><br>\r\nSuspendisse potenti. In posuere venenatis magna, quis venenatis turpis consequat laoreet. Mauris tempus ligula sed diam porttitor at tristique libero luctus. Nulla at sem nisl. In vestibulum laoreet ante eget elementum. Curabitur felis justo, elementum id tempor ac, pellentesque non leo. Cras in mollis turpis. Pellentesque ac enim neque, at ultricies augue.\r\n<br><br>\r\nVivamus mattis dolor id felis dignissim et condimentum enim porta. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam erat volutpat. Etiam non enim vel enim lacinia rutrum. Nullam nec arcu dolor. Proin volutpat luctus mollis. Sed commodo interdum tellus ultricies congue. Nullam eleifend hendrerit quam, vel adipiscing turpis semper a.', 1400, 1, '2012-11-25 20:10:38'),
(8, 'Elevator Inside', 'Etiam pharetra leo in orci vestibulum eget aliquet magna euismod. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce quis nulla velit. Etiam et sem et erat cursus vestibulum sed non lacus. Fusce dignissim, odio eu convallis iaculis, tortor orci placerat nulla, ut porta mi justo a sem. Mauris at mauris dui, sodales vulputate dui. Nunc pellentesque nisi non ante gravida et hendrerit enim rhoncus. Pellentesque sit amet tellus purus, vel mattis diam. Vestibulum elementum neque nec diam pretium scelerisque. Nulla commodo tristique elit eget facilisis. Aliquam erat volutpat. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.\r\n<br><br>\r\nQuisque vel eros libero, eget vulputate nisl. Etiam auctor, justo sit amet consectetur suscipit, arcu turpis tincidunt diam, nec vulputate metus ipsum at felis. Sed dignissim neque id nibh posuere molestie sed a urna. Phasellus odio velit, congue sed feugiat non, egestas sodales dolor. In hac habitasse platea dictumst. Integer luctus, sapien ut laoreet suscipit, velit velit mattis eros, et viverra ligula urna eget ligula. Praesent non nunc mi, eget faucibus urna. Sed aliquet semper quam, nec sodales magna semper in. Aenean neque urna, suscipit sed pellentesque vitae, dignissim ac eros. Nulla consectetur laoreet lectus, vel placerat odio lacinia et. Sed non urna vel turpis dignissim pharetra. Cras pretium, tortor varius viverra accumsan, neque orci luctus erat, et blandit diam ipsum non risus.\r\n<br><br>\r\nQuisque fringilla ullamcorper tristique. Sed eu tincidunt quam. Morbi consectetur aliquet gravida. Vestibulum posuere, nisl sit amet semper ornare, elit magna congue erat, et iaculis arcu enim id purus. Ut semper imperdiet tempus. Cras ac convallis ante. Sed dictum, purus ut sagittis dignissim, ipsum mi rhoncus purus, sed convallis tortor dui at metus. Sed dolor augue, vehicula id sagittis ut, cursus vel ante. Aliquam porttitor justo eu massa consequat id scelerisque odio malesuada. Aenean ut eros nunc, eget auctor nisl. Curabitur elementum accumsan bibendum. In urna massa, laoreet ac scelerisque ac, auctor vitae nisi. Phasellus molestie leo et nulla accumsan condimentum. Fusce venenatis rhoncus ipsum, eleifend iaculis lectus blandit sit amet. Nunc in enim nunc, non eleifend augue.', 800, 1, '2012-11-25 20:11:17'),
(9, 'Holy Stair', 'Vestibulum bibendum, nibh vel tristique ornare, quam augue accumsan risus, quis auctor dolor nibh eu massa. Maecenas quis elit turpis, vitae mattis quam. Sed vitae odio nisi. Fusce laoreet euismod sem a faucibus. Aliquam erat volutpat. Duis aliquet neque eget lorem porta consequat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent neque ipsum, semper aliquam lacinia nec, rutrum eu nisi. Sed dignissim, libero quis aliquet ornare, orci lorem tempor lacus, eget volutpat arcu enim vel felis. Curabitur massa metus, placerat at pulvinar non, viverra at nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae;\r\n<br><br>\r\nSuspendisse feugiat pellentesque lacus vel gravida. Cras leo nisi, lobortis non rutrum sit amet, lobortis lacinia diam. Pellentesque cursus mi eu odio bibendum non hendrerit augue bibendum. Aliquam in metus mauris, sed iaculis velit. Ut id est vitae quam aliquam volutpat eu eu lorem. Suspendisse ultrices commodo lectus, et fermentum ligula aliquet a. Ut et fringilla justo. Etiam feugiat tempus nisi, quis vestibulum nunc imperdiet a. Nunc nunc dolor, vehicula at accumsan sit amet, faucibus sodales justo.\r\n<br><br>\r\nNullam sit amet enim lacus. Suspendisse ultrices imperdiet purus sed fringilla. Maecenas placerat elementum nunc eu ornare. Nunc nec velit orci, vel pellentesque ante. Pellentesque pellentesque luctus tellus. Etiam posuere tincidunt libero vel fermentum. Vivamus neque nibh, vehicula sed facilisis in, tincidunt eu mi. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Mauris bibendum turpis at nulla facilisis ut accumsan nulla sollicitudin. Ut in tortor nec urna euismod congue tristique non nulla. Nam elit ante, elementum in fermentum sed, tempor eget libero. Suspendisse vitae tellus sem, ut accumsan turpis. Suspendisse mauris turpis, consequat at malesuada vel, suscipit eu risus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec sollicitudin tempus semper. In vitae urna nunc, vel suscipit nulla.', 2000, 1, '2012-11-25 20:12:20');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `name`, `address`, `city`, `country_id`, `phone`, `company`, `type`, `status`, `created`) VALUES
(1, 'longpro', 'a@bc.com', '202cb962ac59075b964b07152d234b70', 'Long', 'asd 1234', 'HN', 1, '+10123456789', '', 0, 1, '2012-11-24 17:53:08'),
(2, 'longprao', 'longprao@gmail.com', '202cb962ac59075b964b07152d234b70', 'Graduation day', '', '', NULL, '', '', 0, 1, '2012-11-23 16:48:36');

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
