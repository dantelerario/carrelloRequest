-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 15, 2020 at 08:32 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `idcarrello` bigint(20) UNSIGNED NOT NULL,
  `codice_univoco` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idcart` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idordine` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idshop` int(11) NOT NULL,
  `order_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`idcarrello`, `codice_univoco`, `idcart`, `idordine`, `idshop`, `order_details`, `created_at`, `updated_at`) VALUES
(1, 'futura_001_20', '20', '', 21, 'Ordine non di oggi', '2020-12-01 23:00:00', '2020-12-02 23:00:00'),
(2, 'futura_001_2224242', '2224242', '', 21, 'Ordine di oggi', '2020-12-11 09:49:22', '2020-12-11 09:49:22'),
(3, 'futura_001_1111', '1111', '', 11, 'Ordine di oggi oggi', '2020-12-14 09:33:14', '2020-12-14 09:33:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2020_12_10_153756_create_carrello_table', 1),
(5, '2014_10_12_000000_create_users_table', 2),
(6, '2019_08_19_000000_create_failed_jobs_table', 2),
(7, '2020_12_11_083029_create_carts_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_sellin`
--

CREATE TABLE `orders_sellin` (
  `id` int(11) NOT NULL,
  `id_order` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_order_detail_sellin` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_detail_sellin` longtext COLLATE utf8_unicode_ci,
  `pdv_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_type` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` text COLLATE utf8_unicode_ci,
  `reference` text COLLATE utf8_unicode_ci,
  `current_state` text COLLATE utf8_unicode_ci,
  `invoice_number` text COLLATE utf8_unicode_ci,
  `total_paid` decimal(20,6) DEFAULT NULL,
  `total_paid_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_paid_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_shipping` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_excl` decimal(20,6) DEFAULT NULL,
  `date_add` text COLLATE utf8_unicode_ci,
  `first_name_delivery` text COLLATE utf8_unicode_ci,
  `last_name_delivery` text COLLATE utf8_unicode_ci,
  `vat_delivery` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dni_delivery` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1_delivery` text COLLATE utf8_unicode_ci,
  `address2_delivery` text COLLATE utf8_unicode_ci,
  `postcode_delivery` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_delivery` text COLLATE utf8_unicode_ci,
  `phone_delivery` text COLLATE utf8_unicode_ci,
  `first_name_invoice` text COLLATE utf8_unicode_ci,
  `last_name_invoice` text COLLATE utf8_unicode_ci,
  `vat_invoice` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dni_invoice` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address1_invoice` text COLLATE utf8_unicode_ci,
  `address2_invoice` text COLLATE utf8_unicode_ci,
  `postcode_invoice` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city_invoice` text COLLATE utf8_unicode_ci NOT NULL,
  `phone_invoice` text COLLATE utf8_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8_unicode_ci,
  `payment` text COLLATE utf8_unicode_ci NOT NULL,
  `pdv` text COLLATE utf8_unicode_ci,
  `id_shop` int(11) DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `data_update` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_sellin`
--

INSERT INTO `orders_sellin` (`id`, `id_order`, `id_order_detail_sellin`, `order_detail_sellin`, `pdv_code`, `order_type`, `email`, `reference`, `current_state`, `invoice_number`, `total_paid`, `total_paid_tax_incl`, `total_paid_tax_excl`, `total_shipping`, `total_shipping_tax_incl`, `total_shipping_tax_excl`, `date_add`, `first_name_delivery`, `last_name_delivery`, `vat_delivery`, `dni_delivery`, `address1_delivery`, `address2_delivery`, `postcode_delivery`, `city_delivery`, `phone_delivery`, `first_name_invoice`, `last_name_invoice`, `vat_invoice`, `dni_invoice`, `address1_invoice`, `address2_invoice`, `postcode_invoice`, `city_invoice`, `phone_invoice`, `transaction_id`, `payment`, `pdv`, `id_shop`, `note`, `data_update`) VALUES
(1, '6', NULL, '[{\"product_id\":\"2327\",\"product_name\":\"BIOPORM PLUS Disinfettante Igiene Casa Trigger PMC 750 Ml\",\"product_quantity\":\"3\",\"product_price\":\"1.188525\",\"product_ean13\":\"8003640060313\",\"total_price_tax_incl\":\"4.350000\",\"total_price_tax_excl\":\"3.570000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.450001\",\"unit_price_tax_excl\":\"1.188525\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"3861\",\"product_name\":\"BENEXE\' Soluzione Unica Lenti A Contatto 500 Ml\",\"product_quantity\":\"1\",\"product_price\":\"4.836066\",\"product_ean13\":\"8033971601244\",\"total_price_tax_incl\":\"5.900000\",\"total_price_tax_excl\":\"4.840000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"5.900001\",\"unit_price_tax_excl\":\"4.836066\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"3299\",\"product_name\":\"CARE FOR YOU Gocce Oculari Flacone 15 Ml\",\"product_quantity\":\"1\",\"product_price\":\"3.073770\",\"product_ean13\":\"8002945750325\",\"total_price_tax_incl\":\"3.750000\",\"total_price_tax_excl\":\"3.070000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"27.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"3.749999\",\"unit_price_tax_excl\":\"3.073770\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2128\",\"product_name\":\"BIALCOL DUE Disinfettante Ad Azione Battericida 400 Ml\",\"product_quantity\":\"2\",\"product_price\":\"1.803279\",\"product_ean13\":\"8018031000922\",\"total_price_tax_incl\":\"4.400000\",\"total_price_tax_excl\":\"3.610000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.200000\",\"unit_price_tax_excl\":\"1.803279\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2303\",\"product_name\":\"ALAMA Hydra Shampoo Idratante Capelli Secchi 500 Ml\",\"product_quantity\":\"5\",\"product_price\":\"5.081967\",\"product_ean13\":\"8008277186924\",\"total_price_tax_incl\":\"31.000000\",\"total_price_tax_excl\":\"25.410000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"6.200000\",\"unit_price_tax_excl\":\"5.081967\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'robertocavalletti63@gmail.com', 'PXGCMNYJV', '6', '1', '54.300000', '54.300000', '44.520000', '4.900000', '4.900000', '4.020000', '2020-12-15 21:29:18', 'Roberto', 'Cavalletti', '', '', 'Via San Francesco D’Assisi 5', '', '65010', 'Moscufo ', '3455360868', 'Roberto', 'Cavalletti', '', '', 'Via San Francesco D’Assisi 5', '', '65010', 'Moscufo ', '3455360868', NULL, 'Pagamento alla consegna', NULL, 1, 'Consegna alle 10', '2020-10-19'),
(2, '7', NULL, '[{\"product_id\":\"1651\",\"product_name\":\"ACE Candeg.Sgras.Casa&Bucato Spray Mousse Gent.Univers.600Ml\",\"product_quantity\":\"17\",\"product_price\":\"1.803279\",\"product_ean13\":\"8001480029668\",\"total_price_tax_incl\":\"37.400000\",\"total_price_tax_excl\":\"30.660000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.200000\",\"unit_price_tax_excl\":\"1.803279\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1473\",\"product_name\":\"ACE Candegg.Sgras.Casa&Bucato Spray Mousse Armonie Fl.650 Ml\",\"product_quantity\":\"1\",\"product_price\":\"1.803279\",\"product_ean13\":\"8001480029651\",\"total_price_tax_incl\":\"2.200000\",\"total_price_tax_excl\":\"1.800000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.200000\",\"unit_price_tax_excl\":\"1.803279\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'sim.sammassimo@gmail.com', 'TLUQYRHPI', '6', '2', '44.500000', '44.500000', '36.480000', '4.900000', '4.900000', '4.020000', '2020-04-11 21:45:50', 'Simone', 'Sammassimo', '', '', 'Via della pace 6', 'frazione san Nicolò a Tordino', '64100', 'Teramo ', '3496505577', 'Simone', 'Sammassimo', '', '', 'Via della pace 6', 'frazione san Nicolò a Tordino', '64100', 'Teramo ', '3496505577', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19'),
(3, '8', NULL, '[{\"product_id\":\"1298\",\"product_name\":\"COCCOLINO Ammorb.Conc.Creations Sand.&Caprifog.30 Lav.750Ml\",\"product_quantity\":\"1\",\"product_price\":\"1.557377\",\"product_ean13\":\"8712561444293\",\"total_price_tax_incl\":\"1.900000\",\"total_price_tax_excl\":\"1.560000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.900000\",\"unit_price_tax_excl\":\"1.557377\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"931\",\"product_name\":\"FABULOSO Ammorbidente Conc.Sens.Oro Mandar.40 Lavaggi 1000Ml\",\"product_quantity\":\"1\",\"product_price\":\"1.598361\",\"product_ean13\":\"8714789618029\",\"total_price_tax_incl\":\"1.950000\",\"total_price_tax_excl\":\"1.600000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.950000\",\"unit_price_tax_excl\":\"1.598361\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1018\",\"product_name\":\"BREEZE Deodorante Spray Neutro 150 Ml\",\"product_quantity\":\"1\",\"product_price\":\"2.254098\",\"product_ean13\":\"8003510021222\",\"total_price_tax_incl\":\"2.750000\",\"total_price_tax_excl\":\"2.250000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.750000\",\"unit_price_tax_excl\":\"2.254098\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1236\",\"product_name\":\"LISTERINE Collutorio Denti&Gengive 500 Ml+Mini Collut.95 Ml\",\"product_quantity\":\"1\",\"product_price\":\"4.016393\",\"product_ean13\":\"3574661112688\",\"total_price_tax_incl\":\"4.900000\",\"total_price_tax_excl\":\"4.020000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"4.899999\",\"unit_price_tax_excl\":\"4.016393\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1215\",\"product_name\":\"CHANTECLAIR Pav.100% Vert Ecod.C\\\\\\/Oli Es.Fiori Di Melo 1000Ml\",\"product_quantity\":\"1\",\"product_price\":\"1.598361\",\"product_ean13\":\"8015194510633\",\"total_price_tax_incl\":\"1.950000\",\"total_price_tax_excl\":\"1.600000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.950000\",\"unit_price_tax_excl\":\"1.598361\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"4159\",\"product_name\":\"AVEENO Bagno Doccia Idratante 500 Ml\",\"product_quantity\":\"1\",\"product_price\":\"8.114754\",\"product_ean13\":\"3574661493183\",\"total_price_tax_incl\":\"9.900000\",\"total_price_tax_excl\":\"8.110000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"9.900000\",\"unit_price_tax_excl\":\"8.114754\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'simonacapparucci@libero.it', 'ALLSFTYPD', '6', '3', '28.250000', '28.250000', '23.160000', '4.900000', '4.900000', '4.020000', '2020-04-11 22:16:32', 'Simona', 'Capparucci', '', '', 'via San Francesco D\'assisi', '5', '65010', 'Moscufo', '3927004509', 'Simona', 'Capparucci', '', '', 'via San Francesco D\'assisi', '5', '65010', 'Moscufo', '3927004509', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19'),
(4, '9', NULL, '[{\"product_id\":\"2989\",\"product_name\":\"Orphea l\'Essenza Profuma Biancheria al Profumo di Fiori 200 ml\",\"product_quantity\":\"1\",\"product_price\":\"3.073770\",\"product_ean13\":\"8001365182914\",\"total_price_tax_incl\":\"3.750000\",\"total_price_tax_excl\":\"3.070000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"231.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"3.749999\",\"unit_price_tax_excl\":\"3.073770\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2342\",\"product_name\":\"AMUCHINA Gel Disinfettante Per Mani Xgerm Senz\'Acqua 80 Ml\",\"product_quantity\":\"1\",\"product_price\":\"2.827869\",\"product_ean13\":\"8000036023242\",\"total_price_tax_incl\":\"3.450000\",\"total_price_tax_excl\":\"2.830000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"3.450000\",\"unit_price_tax_excl\":\"2.827869\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"4827\",\"product_name\":\"BENEXE\' Corpo Gel Sport Sollievo Dolori Artic&Muscol.100 Ml\",\"product_quantity\":\"1\",\"product_price\":\"5.655738\",\"product_ean13\":\"8051773830730\",\"total_price_tax_incl\":\"6.900000\",\"total_price_tax_excl\":\"5.660000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"6.900000\",\"unit_price_tax_excl\":\"5.655738\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2849\",\"product_name\":\"ACE Detersivo Liquido Igienizzante Classico 25 Lav.1375 Ml\",\"product_quantity\":\"1\",\"product_price\":\"2.827869\",\"product_ean13\":\"8001480029392\",\"total_price_tax_incl\":\"3.450000\",\"total_price_tax_excl\":\"2.830000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"1538.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"3.450000\",\"unit_price_tax_excl\":\"2.827869\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2848\",\"product_name\":\"ACE GENTILE Candeggina Delic.Igieniz.Prof.Bouquet Med.2000Ml\",\"product_quantity\":\"100\",\"product_price\":\"2.418033\",\"product_ean13\":\"8001480021143\",\"total_price_tax_incl\":\"295.000000\",\"total_price_tax_excl\":\"241.800000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"2174.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.950000\",\"unit_price_tax_excl\":\"2.418033\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'maurizio.camplone@hotmail.it', 'FVYRWSBRP', '6', '4', '312.550000', '312.550000', '256.190000', '0.000000', '0.000000', '0.000000', '2020-04-12 03:06:40', 'MAURIZIO', 'CAMPLONE', '', '', 'Via Ambrosio Palma 10', '', '65123', 'PESCARA', '3274945104', 'MAURIZIO', 'CAMPLONE', '', '', 'Via Ambrosio Palma 10', '', '65123', 'PESCARA', '3274945104', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19'),
(5, '10', NULL, '[{\"product_id\":\"1404\",\"product_name\":\"ACQUA ALLE ROSE Acq.Micel.Struc.P.Normali Viso&Oc&Lab.200Ml\",\"product_quantity\":\"1\",\"product_price\":\"4.057377\",\"product_ean13\":\"8002410033281\",\"total_price_tax_incl\":\"4.950000\",\"total_price_tax_excl\":\"4.060000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"4.950000\",\"unit_price_tax_excl\":\"4.057377\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"4494\",\"product_name\":\"ADIDAS UEFA Uomo Shower 250 Ml\",\"product_quantity\":\"1\",\"product_price\":\"1.229508\",\"product_ean13\":\"3614226614285\",\"total_price_tax_incl\":\"1.500000\",\"total_price_tax_excl\":\"1.230000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.500000\",\"unit_price_tax_excl\":\"1.229508\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"248\",\"product_name\":\"ACE Candeggina Gentile 1000 Ml\",\"product_quantity\":\"1\",\"product_price\":\"1.598361\",\"product_ean13\":\"8001480021112\",\"total_price_tax_incl\":\"1.950000\",\"total_price_tax_excl\":\"1.600000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.950000\",\"unit_price_tax_excl\":\"1.598361\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"892\",\"product_name\":\"ACE Candeggina Liquid Gel Armonie Floreali 2500 Ml\",\"product_quantity\":\"1\",\"product_price\":\"2.418033\",\"product_ean13\":\"8001480020955\",\"total_price_tax_incl\":\"2.950000\",\"total_price_tax_excl\":\"2.420000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.950000\",\"unit_price_tax_excl\":\"2.418033\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1330\",\"product_name\":\"ACE Candeggina Sgrassatore Casa&Bucato Gel 500 Ml\",\"product_quantity\":\"5\",\"product_price\":\"1.475410\",\"product_ean13\":\"8001480020368\",\"total_price_tax_incl\":\"9.000000\",\"total_price_tax_excl\":\"7.380000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.800000\",\"unit_price_tax_excl\":\"1.475410\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1651\",\"product_name\":\"ACE Candeg.Sgras.Casa&Bucato Spray Mousse Gent.Univers.600Ml\",\"product_quantity\":\"183\",\"product_price\":\"1.803279\",\"product_ean13\":\"8001480029668\",\"total_price_tax_incl\":\"402.600000\",\"total_price_tax_excl\":\"330.000000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.200000\",\"unit_price_tax_excl\":\"1.803279\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'maurizio.camplone29@gmail.com', 'XYUBDLOZZ', '6', '5', '422.950000', '422.950000', '346.690000', '0.000000', '0.000000', '0.000000', '2020-04-12 03:18:25', 'MAURIZIO', 'CAMPLONE', '', '', 'Via Ambrosio Palma 10', '', '65123', 'PESCARA', '3274945104', 'MAURIZIO', 'CAMPLONE', '', '', 'Via Ambrosio Palma 10', '', '65123', 'PESCARA', '3274945104', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19'),
(6, '11', NULL, '[{\"product_id\":\"2988\",\"product_name\":\"Orphea l\'Essenza Profuma Biancheria al Profumo di Lavanda Maillette 200 ml\",\"product_quantity\":\"2\",\"product_price\":\"3.073770\",\"product_ean13\":\"8001365182907\",\"total_price_tax_incl\":\"7.500000\",\"total_price_tax_excl\":\"6.150000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"230.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"3.749999\",\"unit_price_tax_excl\":\"3.073770\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2455\",\"product_name\":\"DERMOVITAMINA Ragadi Lipogel Rigenerante Naso Labbra\",\"product_quantity\":\"4\",\"product_price\":\"5.163934\",\"product_ean13\":\"8032738384727\",\"total_price_tax_incl\":\"25.200000\",\"total_price_tax_excl\":\"20.660000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"6.299999\",\"unit_price_tax_excl\":\"5.163934\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"4031\",\"product_name\":\"ACQUA&SAPONE 100 Bastoncini Puliorecchie Biodeg.In Barattolo\",\"product_quantity\":\"1\",\"product_price\":\"0.614754\",\"product_ean13\":\"8021470003140\",\"total_price_tax_incl\":\"0.750000\",\"total_price_tax_excl\":\"0.610000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"0.750000\",\"unit_price_tax_excl\":\"0.614754\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"368\",\"product_name\":\"DUREX Profilattici Jeans Easy On 9 Pezzi\",\"product_quantity\":\"1\",\"product_price\":\"4.836066\",\"product_ean13\":\"8004373732317\",\"total_price_tax_incl\":\"5.900000\",\"total_price_tax_excl\":\"4.840000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"5.900001\",\"unit_price_tax_excl\":\"4.836066\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'rocco@ortona.com', 'HNAARDFYV', '6', '6', '44.250000', '44.250000', '36.280000', '4.900000', '4.900000', '4.020000', '2020-04-13 10:50:50', 'Rocco', 'Siffredi', '', '', 'Via Dommarco,69 ', '', '66026', 'Ortona', '339696969', 'Rocco', 'Siffredi', '', '', 'Via Dommarco,69 ', '', '66026', 'Ortona', '339696969', NULL, 'Pagamento alla consegna', NULL, 1, 'La corazzata potemkim &egrave; una cagata pazzesca!', '2020-10-19'),
(7, '12', NULL, '[{\"product_id\":\"4822\",\"product_name\":\"ABBRONZANTE BIONIKE Defence Sun Baby Latte Spray P50+ 200 Ml\",\"product_quantity\":\"6\",\"product_price\":\"15.491803\",\"product_ean13\":\"8029041141222\",\"total_price_tax_incl\":\"113.400000\",\"total_price_tax_excl\":\"92.950000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"18.900000\",\"unit_price_tax_excl\":\"15.491803\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2512\",\"product_name\":\"ALMO NATURE Daily Alimento X Cani Con Vitello&Carote 100 Gr\",\"product_quantity\":\"1\",\"product_price\":\"0.532787\",\"product_ean13\":\"8001154124798\",\"total_price_tax_incl\":\"0.650000\",\"total_price_tax_excl\":\"0.530000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"107.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"0.650000\",\"unit_price_tax_excl\":\"0.532787\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1781\",\"product_name\":\"CATISFACTIONS Crocchette X Gatti Con Formaggio Bustina 60 Gr\",\"product_quantity\":\"1\",\"product_price\":\"1.024590\",\"product_ean13\":\"5998749117798\",\"total_price_tax_incl\":\"1.250000\",\"total_price_tax_excl\":\"1.020000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.250000\",\"unit_price_tax_excl\":\"1.024590\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"2081\",\"product_name\":\"CESAR Mini-Joys x Cani Adulti C.Formaggio&Pollo Bust.100 Gr\",\"product_quantity\":\"1\",\"product_price\":\"1.598361\",\"product_ean13\":\"5998749135570\",\"total_price_tax_incl\":\"1.950000\",\"total_price_tax_excl\":\"1.600000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.950000\",\"unit_price_tax_excl\":\"1.598361\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"4482\",\"product_name\":\"FAMILY Tappetino Traversa Super Assorb.X Animali 60x60 30 Pz\",\"product_quantity\":\"1\",\"product_price\":\"5.655738\",\"product_ean13\":\"8016319314129\",\"total_price_tax_incl\":\"6.900000\",\"total_price_tax_excl\":\"5.660000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"6.900000\",\"unit_price_tax_excl\":\"5.655738\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'carlamartino@hotmail.it', 'WCAZEDYSN', '6', '7', '129.050000', '129.050000', '105.780000', '4.900000', '4.900000', '4.020000', '2020-04-13 17:52:53', 'Maurizio', 'Martino', '', '', 'Camplone', 'Ambrosiobpalma', '65100', 'PESCARA', '123456', 'Maurizio', 'Martino', '', '', 'Camplone', 'Ambrosiobpalma', '65100', 'PESCARA', '123456', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19'),
(8, '13', NULL, '[{\"product_id\":\"1385\",\"product_name\":\"KH7 Smacchiatore Capi Bianchi E Colorati Trigger 750 Ml\",\"product_quantity\":\"2\",\"product_price\":\"2.950820\",\"product_ean13\":\"8420822115256\",\"total_price_tax_incl\":\"7.200000\",\"total_price_tax_excl\":\"5.900000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"3.600000\",\"unit_price_tax_excl\":\"2.950820\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"870\",\"product_name\":\"NICKY Carta Igienica 3 Veli Elite 12 Rotoli\",\"product_quantity\":\"1\",\"product_price\":\"3.647541\",\"product_ean13\":\"8004260460668\",\"total_price_tax_incl\":\"4.450000\",\"total_price_tax_excl\":\"3.650000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"4.450000\",\"unit_price_tax_excl\":\"3.647541\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"412\",\"product_name\":\"BADEDAS Doccia Schiuma Oxygel Rinfrescante 250 Ml\",\"product_quantity\":\"4\",\"product_price\":\"1.229508\",\"product_ean13\":\"8004020763503\",\"total_price_tax_incl\":\"6.000000\",\"total_price_tax_excl\":\"4.920000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.500000\",\"unit_price_tax_excl\":\"1.229508\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"943\",\"product_name\":\"PERLA Asciugatutto Comprami 3 Veli 2 Rotoli\",\"product_quantity\":\"2\",\"product_price\":\"1.762295\",\"product_ean13\":\"8005495466319\",\"total_price_tax_incl\":\"4.300000\",\"total_price_tax_excl\":\"3.520000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.150000\",\"unit_price_tax_excl\":\"1.762295\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'luigicaniglia2@tin.it', 'CCSUGMEMP', '5', '8', '26.850000', '26.850000', '22.010000', '4.900000', '4.900000', '4.020000', '2020-04-13 20:41:13', 'Luigi', 'Caniglia', '', '', 'via Colle Barone, 56', '', '66016', 'Guardiagrele', '3485104319', 'Luigi', 'Caniglia', '', '', 'via Colle Barone, 56', '', '66016', 'Guardiagrele', '3485104319', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19'),
(9, '14', NULL, '[{\"product_id\":\"115\",\"product_name\":\"ACE Candeggina Classica Regolare Liquida 1 Litro\",\"product_quantity\":\"1\",\"product_price\":\"1.065574\",\"product_ean13\":\"8001480020887\",\"total_price_tax_incl\":\"1.300000\",\"total_price_tax_excl\":\"1.070000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.300000\",\"unit_price_tax_excl\":\"1.065574\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"4384\",\"product_name\":\"ACE WC Pulitore Profumato Gel Brezza Marina&Talco 700 Ml\",\"product_quantity\":\"1\",\"product_price\":\"1.803279\",\"product_ean13\":\"8001480701373\",\"total_price_tax_incl\":\"2.200000\",\"total_price_tax_excl\":\"1.800000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.200000\",\"unit_price_tax_excl\":\"1.803279\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"4035\",\"product_name\":\"ACQUA&SAPONE Sacchi Pattumiera 50x60 30 Lt Azzurro Chius.D\\\\\\/S\",\"product_quantity\":\"2\",\"product_price\":\"0.819672\",\"product_ean13\":\"8021470002853\",\"total_price_tax_incl\":\"2.000000\",\"total_price_tax_excl\":\"1.640000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"1.000000\",\"unit_price_tax_excl\":\"0.819672\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"587\",\"product_name\":\"AMUCHINA Additivo Disinfettante Liquido Per Bucato 1000 Ml\",\"product_quantity\":\"2\",\"product_price\":\"2.418033\",\"product_ean13\":\"8000036012048\",\"total_price_tax_incl\":\"5.900000\",\"total_price_tax_excl\":\"4.840000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"2.950000\",\"unit_price_tax_excl\":\"2.418033\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'marco-gio@alice.it', 'BSIAGBBXL', '6', '0', '53.350000', '53.350000', '43.740000', '4.900000', '4.900000', '4.020000', '2020-04-14 10:24:35', 'Marco', 'Scartozzi ', '', '', 'Via Santa Lucia 22', '', '63074', 'San Benedetto del Tronto', '3472922700', 'Marco', 'Scartozzi ', '', '', 'Via Santa Lucia 22', '', '63074', 'San Benedetto del Tronto', '3472922700', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19'),
(10, '15', NULL, '[{\"product_id\":\"1365\",\"product_name\":\"PRODIGY Crema Colorante Castano Chiaro Noce 5,0\",\"product_quantity\":\"1\",\"product_price\":\"7.172131\",\"product_ean13\":\"3600522595816\",\"total_price_tax_incl\":\"8.750000\",\"total_price_tax_excl\":\"7.170000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"8.750000\",\"unit_price_tax_excl\":\"7.172131\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"874\",\"product_name\":\"STREP Kit Depilazione Profess.Scaldacera+Ricarica C\\\\\\/Pochette\",\"product_quantity\":\"1\",\"product_price\":\"11.434426\",\"product_ean13\":\"8002340009455\",\"total_price_tax_incl\":\"13.950000\",\"total_price_tax_excl\":\"11.430000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"13.950000\",\"unit_price_tax_excl\":\"11.434426\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"},{\"product_id\":\"1187\",\"product_name\":\"STREP Striscette Depilazione In Morbido Tessuto 100 Pezzi\",\"product_quantity\":\"1\",\"product_price\":\"3.237705\",\"product_ean13\":\"8002340011328\",\"total_price_tax_incl\":\"3.950000\",\"total_price_tax_excl\":\"3.240000\",\"tax_name\":\"\",\"tax_rate\":\"0.000\",\"product_weight\":\"0.000000\",\"TASSE_ps_order_detail\":\"1\",\"unit_price_tax_incl\":\"3.950000\",\"unit_price_tax_excl\":\"3.237705\",\"TASSE_ps_product\":\"1\",\"rate\":\"22.000\"}]', 'aes', 'online', 'simo.gianni@virgilio.it', 'FZXLYUKTK', '5', '9', '31.550000', '31.550000', '25.860000', '4.900000', '4.900000', '4.020000', '2020-04-14 10:44:55', 'Simona', 'Gianni', '', '', 'Via D\'Ilio 24', '5', '66020', 'SAN GIOVANNI TEATINO', '3287781106', 'Simona', 'Gianni', '', '', 'Via D\'Ilio 24', '5', '66020', 'SAN GIOVANNI TEATINO', '3287781106', NULL, 'Pagamento alla consegna', NULL, 1, NULL, '2020-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `orders_sellout`
--

CREATE TABLE `orders_sellout` (
  `id` int(11) NOT NULL,
  `id_order` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id_order_detail_sellout` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_detail_sellout` text COLLATE utf8_unicode_ci,
  `pdv_code` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_type` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `tot_payed` double(10,2) DEFAULT NULL,
  `tot_payed_cc` double(10,2) DEFAULT NULL,
  `tot_payed_cash` double(10,2) DEFAULT NULL,
  `tot_recieved` double(10,2) DEFAULT NULL,
  `tot_recieved_cc` double(10,2) DEFAULT NULL,
  `tot_recieved_cash` double(10,2) DEFAULT NULL,
  `tot_online_order` double(10,2) DEFAULT NULL,
  `date_assign_mission` datetime DEFAULT NULL,
  `date_start_mission` datetime DEFAULT NULL,
  `date_end_picking` datetime DEFAULT NULL,
  `date_end_mission` datetime DEFAULT NULL,
  `mission_state` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders_sellout`
--

INSERT INTO `orders_sellout` (`id`, `id_order`, `id_order_detail_sellout`, `order_detail_sellout`, `pdv_code`, `order_type`, `user_id`, `tot_payed`, `tot_payed_cc`, `tot_payed_cash`, `tot_recieved`, `tot_recieved_cc`, `tot_recieved_cash`, `tot_online_order`, `date_assign_mission`, `date_start_mission`, `date_end_picking`, `date_end_mission`, `mission_state`) VALUES
(1, '6', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 54.30, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(2, '7', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 44.50, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(3, '8', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 28.25, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(4, '9', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 312.55, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(5, '10', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 422.95, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(6, '11', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 44.25, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(7, '12', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 129.05, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(8, '13', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 26.85, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(9, '14', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 53.35, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5),
(10, '15', NULL, NULL, 'aes', 'online', 0, NULL, NULL, NULL, NULL, NULL, NULL, 31.55, '2020-10-15 00:00:00', '2020-10-15 00:00:00', NULL, '2020-10-15 00:00:00', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`idcarrello`),
  ADD UNIQUE KEY `carts_codice_univoco_unique` (`codice_univoco`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_sellin`
--
ALTER TABLE `orders_sellin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `pdv_code` (`pdv_code`),
  ADD KEY `order_type` (`order_type`);

--
-- Indexes for table `orders_sellout`
--
ALTER TABLE `orders_sellout`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_order` (`id_order`),
  ADD KEY `pdv_code` (`pdv_code`),
  ADD KEY `order_type` (`order_type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `idcarrello` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders_sellin`
--
ALTER TABLE `orders_sellin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders_sellout`
--
ALTER TABLE `orders_sellout`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
