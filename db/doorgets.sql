-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 07, 2018 at 10:22 PM
-- Server version: 5.7.23-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doorgets`
--

-- --------------------------------------------------------

--
-- Table structure for table `_cart`
--

CREATE TABLE `_cart` (
  `id` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT '0',
  `user_groupe` int(11) DEFAULT '0',
  `user_pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_lastname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_firstname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vat` decimal(7,2) DEFAULT '0.00',
  `order_id` int(11) DEFAULT '0',
  `currency_after` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `currency_before` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_amount` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `currency_code` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `products` text COLLATE utf8_spanish_ci,
  `total_amount` decimal(7,2) DEFAULT '0.00',
  `total_amount_vat` decimal(7,2) DEFAULT '0.00',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_creation_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0',
  `date_modification_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_categories`
--

CREATE TABLE `_categories` (
  `id` int(11) NOT NULL,
  `id_parent` int(11) NOT NULL DEFAULT '0',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `ordre` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_categories_traduction`
--

CREATE TABLE `_categories_traduction` (
  `id` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL DEFAULT '0',
  `langue` varchar(10) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'fr',
  `nom` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_block`
--

CREATE TABLE `_dg_block` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_block_traduction`
--

CREATE TABLE `_dg_block_traduction` (
  `id` int(11) NOT NULL,
  `id_block` int(11) NOT NULL,
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_carousel`
--

CREATE TABLE `_dg_carousel` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `type` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `auto_play` int(11) DEFAULT '1',
  `stop_on_hover` int(11) DEFAULT '1',
  `navigation` int(11) DEFAULT '1',
  `items_count` int(11) DEFAULT '1',
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0',
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_carousel_traduction`
--

CREATE TABLE `_dg_carousel_traduction` (
  `id` int(11) NOT NULL,
  `id_carousel` int(11) DEFAULT '0',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_cart`
--

CREATE TABLE `_dg_cart` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `product_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `product_id` int(11) DEFAULT '0',
  `product_uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `product_quantity` int(11) DEFAULT NULL,
  `product_price` decimal(7,2) DEFAULT '0.00',
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_comments`
--

CREATE TABLE `_dg_comments` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `uri_content` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `stars` int(11) DEFAULT '0',
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `comment` text COLLATE utf8_spanish_ci,
  `lu` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `date_creation` int(11) NOT NULL,
  `validation` int(11) DEFAULT '0',
  `date_validation` int(11) DEFAULT '0',
  `date_archive` int(11) NOT NULL DEFAULT '0',
  `adress_ip` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_download`
--

CREATE TABLE `_dg_download` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0',
  `date_modification_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_creation_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_email_notification`
--

CREATE TABLE `_dg_email_notification` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `uri` varchar(255) DEFAULT '',
  `groupe_traduction` text,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_dg_email_notification`
--

INSERT INTO `_dg_email_notification` (`id`, `id_user`, `id_groupe`, `uri`, `groupe_traduction`, `date_creation`) VALUES
(2, 7, 11, 'add-content-to-check', 'a:20:{s:2:"en";s:2:"21";s:2:"fr";s:2:"22";s:2:"de";s:2:"23";s:2:"es";s:2:"24";s:2:"pl";s:2:"25";s:2:"uk";s:2:"26";s:2:"ru";s:2:"27";s:2:"tu";s:2:"28";s:2:"po";s:2:"29";s:2:"su";s:2:"30";s:2:"it";s:2:"31";s:2:"sk";s:2:"32";s:2:"id";s:2:"33";s:2:"hi";s:2:"34";s:2:"ja";s:2:"35";s:2:"ko";s:2:"36";s:2:"th";s:2:"37";s:2:"cn";s:2:"38";s:2:"iw";s:2:"39";s:2:"ar";s:2:"40";}', 1454191095),
(3, 7, 11, 'accepted-content', 'a:20:{s:2:"en";s:2:"41";s:2:"fr";s:2:"42";s:2:"de";s:2:"43";s:2:"es";s:2:"44";s:2:"pl";s:2:"45";s:2:"uk";s:2:"46";s:2:"ru";s:2:"47";s:2:"tu";s:2:"48";s:2:"po";s:2:"49";s:2:"su";s:2:"50";s:2:"it";s:2:"51";s:2:"sk";s:2:"52";s:2:"id";s:2:"53";s:2:"hi";s:2:"54";s:2:"ja";s:2:"55";s:2:"ko";s:2:"56";s:2:"th";s:2:"57";s:2:"cn";s:2:"58";s:2:"iw";s:2:"59";s:2:"ar";s:2:"60";}', 1454191211),
(4, 7, 11, 'content-refused', 'a:20:{s:2:"en";s:2:"61";s:2:"fr";s:2:"62";s:2:"de";s:2:"63";s:2:"es";s:2:"64";s:2:"pl";s:2:"65";s:2:"uk";s:2:"66";s:2:"ru";s:2:"67";s:2:"tu";s:2:"68";s:2:"po";s:2:"69";s:2:"su";s:2:"70";s:2:"it";s:2:"71";s:2:"sk";s:2:"72";s:2:"id";s:2:"73";s:2:"hi";s:2:"74";s:2:"ja";s:2:"75";s:2:"ko";s:2:"76";s:2:"th";s:2:"77";s:2:"cn";s:2:"78";s:2:"iw";s:2:"79";s:2:"ar";s:2:"80";}', 1454191260);

-- --------------------------------------------------------

--
-- Table structure for table `_dg_email_notification_traduction`
--

CREATE TABLE `_dg_email_notification_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `langue` varchar(11) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message_tinymce` text,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_dg_email_notification_traduction`
--

INSERT INTO `_dg_email_notification_traduction` (`id`, `id_content`, `title`, `langue`, `type`, `subject`, `message_tinymce`, `date_modification`) VALUES
(1, 1, 'sdfdqsfqsdfqsdf', 'en', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(2, 1, 'sdfdqsfqsdfqsdf', 'fr', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(3, 1, 'sdfdqsfqsdfqsdf', 'de', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(4, 1, 'sdfdqsfqsdfqsdf', 'es', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(5, 1, 'sdfdqsfqsdfqsdf', 'pl', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(6, 1, 'sdfdqsfqsdfqsdf', 'uk', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(7, 1, 'sdfdqsfqsdfqsdf', 'ru', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(8, 1, 'sdfdqsfqsdfqsdf', 'tu', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(9, 1, 'sdfdqsfqsdfqsdf', 'po', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(10, 1, 'sdfdqsfqsdfqsdf', 'su', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(11, 1, 'sdfdqsfqsdfqsdf', 'it', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(12, 1, 'sdfdqsfqsdfqsdf', 'sk', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(13, 1, 'sdfdqsfqsdfqsdf', 'id', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(14, 1, 'sdfdqsfqsdfqsdf', 'hi', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(15, 1, 'sdfdqsfqsdfqsdf', 'ja', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(16, 1, 'sdfdqsfqsdfqsdf', 'ko', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(17, 1, 'sdfdqsfqsdfqsdf', 'th', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(18, 1, 'sdfdqsfqsdfqsdf', 'cn', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(19, 1, 'sdfdqsfqsdfqsdf', 'iw', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(20, 1, 'sdfdqsfqsdfqsdf', 'ar', '', 'qsdfqsdfqsdfqsd', 'fqsdfqsdf', 1454181549),
(21, 2, 'Add content to check', 'en', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454191095),
(22, 2, 'Ajouter du contenu pour vÃ©rifier', 'fr', '', 'Nouveau contenu est en attente de modÃ©ration', 'Salut,&lt;br /&gt;Merci de vous contacter pour v&eacute;rifier un nouveau contenu.', 1454198856),
(23, 2, 'Inhalte hinzufÃ¼gen, um zu Ã¼berprÃ¼fen', 'de', '', 'Neue Inhalte auf Moderation wart', 'Hallo,&lt;br /&gt;Vielen Dank, Sie zu kontaktieren, um einen neuen Inhalt zu &uuml;berpr&uuml;fen.', 1454198895),
(24, 2, 'Agregar contenido para comprobar', 'es', '', 'Nuevo contenido estÃ¡ pendiente de moderaciÃ³n', 'Hola,&lt;br /&gt;Gracias a ponerse en contacto con usted para verificar un nuevo contenido.', 1454198942),
(25, 2, 'Dodaj zawartoÅ›Ä‡ do sprawdzenia', 'pl', '', 'Nowa zawartoÅ›Ä‡ oczekuje na moderacjÄ™', 'Halo,&lt;br /&gt;DziÄ™kujÄ™, aby skontaktowaÄ‡ siÄ™ z TobÄ… w celu sprawdzenia nowych treÅ›ci.', 1454198990),
(26, 2, 'Ð”Ð¾Ð´Ð°Ñ‚Ð¸ Ð²Ð¼Ñ–ÑÑ‚, Ñ‰Ð¾Ð± Ð¿ÐµÑ€ÐµÐ²Ñ–Ñ€Ð¸Ñ‚Ð¸', 'uk', '', 'ÐÐ¾Ð²Ð¸Ð¹ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚ Ð¾Ñ‡Ñ–ÐºÑƒÑ” Ð¼Ð¾Ð´ÐµÑ€Ð°Ñ†Ñ–Ñ—', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ,&lt;br /&gt;Ð¡Ð¿Ð°ÑÐ¸Ð±Ñ– Ð²Ð°Ð¼ Ð·Ð²&#039;ÑÐ·Ð°Ñ‚Ð¸ÑÑ Ð· Ð’Ð°Ð¼Ð¸ Ð´Ð»Ñ Ð¿ÐµÑ€ÐµÐ²Ñ–Ñ€ÐºÐ¸ Ð½Ð¾Ð²Ð¾Ð³Ð¾ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚Ñƒ.', 1454199041),
(27, 2, 'Ð”Ð¾Ð±Ð°Ð²Ð¸Ñ‚ÑŒ ÑÐ¾Ð´ÐµÑ€Ð¶Ð¸Ð¼Ð¾Ðµ, Ñ‡Ñ‚Ð¾Ð±Ñ‹ Ð¿Ñ€Ð¾Ð²ÐµÑ€Ð¸Ñ‚ÑŒ', 'ru', '', 'ÐÐ¾Ð²Ñ‹Ð¹ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚ Ð¾Ð¶Ð¸Ð´Ð°ÐµÑ‚ Ð¼Ð¾Ð´ÐµÑ€Ð°Ñ†Ð¸Ð¸', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ,&lt;br /&gt;Ð¡Ð¿Ð°ÑÐ¸Ð±Ð¾ Ð²Ð°Ð¼ ÑÐ²ÑÐ·Ð°Ñ‚ÑŒÑÑ Ñ Ð’Ð°Ð¼Ð¸ Ð´Ð»Ñ Ð¿Ñ€Ð¾Ð²ÐµÑ€ÐºÐ¸ Ð½Ð¾Ð²Ð¾Ð³Ð¾ ÐºÐ¾Ð½Ñ‚ÐµÐ½Ñ‚Ð°.', 1454199081),
(28, 2, 'Kontrol etmek iÃ§in iÃ§erik ekle', 'tu', '', 'Yeni iÃ§erik Ä±lÄ±mlÄ±lÄ±k bekliyor', 'Merhaba,&lt;br /&gt;Yeni i&ccedil;eriÄŸini doÄŸrulamak i&ccedil;in sizinle iletiÅŸim kurmak i&ccedil;in teÅŸekk&uuml;r ederiz.', 1454199121),
(29, 2, 'Adicionar conteÃºdo a verificar', 'po', '', 'Novo conteÃºdo estÃ¡ aguardando moderaÃ§Ã£o', 'Ol&aacute;,&lt;br /&gt;Obrigado entrar em contato para verificar um novo conte&uacute;do.', 1454199150),
(30, 2, 'LÃ¤gg till innehÃ¥ll fÃ¶r att kontrollera', 'su', '', 'Nytt innehÃ¥ll vÃ¤ntar modere', 'Hall&aring;,&lt;br /&gt;Tack f&ouml;r att kontakta dig f&ouml;r att verifiera ett nytt inneh&aring;ll.', 1454199185),
(31, 2, 'Aggiungere contenuto per verificare', 'it', '', 'Nuovi contenuti Ã¨ in attesa di moderazione', 'Ciao,&lt;br /&gt;Grazie a contattarti per verificare un nuovo contenuto.', 1454199223),
(32, 2, 'PridaÅ¥ obsah skontrolovaÅ¥', 'sk', '', 'NovÃ½ obsah je ÄakÃ¡ na moderovanie', 'Ahoj,&lt;br /&gt;ÄŽakujem v&aacute;m kontaktovaÅ¥ overiÅ¥ nov&yacute; obsah.', 1454199293),
(33, 2, 'Menambahkan konten untuk memeriksa', 'id', '', 'Konten baru sedang menunggu moderasi', 'Halo,&lt;br /&gt;Terima kasih untuk menghubungi Anda untuk memverifikasi konten baru.', 1454199328),
(34, 2, 'à¤œà¤¾à¤à¤š à¤•à¤°à¤¨à¥‡ à¤•à¥‡ à¤²à¤¿à¤ à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤œà¥‹à¤¡à¤¼à¥‡à¤‚', 'hi', '', 'à¤¨à¤ˆ à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤¸à¤‚à¤¯à¤® à¤•à¤¾ à¤‡à¤‚à¤¤à¤œà¤¾à¤° à¤•à¤° à¤°à¤¹à¤¾ à¤¹à¥ˆ', 'à¤¨à¤®à¤¸à¥à¤¤à¥‡,&lt;br /&gt;à¤†à¤ª à¤à¤• à¤¨à¤ˆ à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤•à¥‹ à¤¸à¤¤à¥à¤¯à¤¾à¤ªà¤¿à¤¤ à¤•à¤°à¤¨à¥‡ à¤•à¥‡ à¤²à¤¿à¤ à¤†à¤ªà¤¸à¥‡ à¤¸à¤‚à¤ªà¤°à¥à¤• à¤•à¤°à¤¨à¥‡ à¤•à¥‡ à¤²à¤¿à¤ à¤§à¤¨à¥à¤¯à¤µà¤¾à¤¦à¥¤', 1454199357),
(35, 2, 'ãƒã‚§ãƒƒã‚¯ã—ã¦ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ã‚’è¿½åŠ ', 'ja', '', 'æ–°ã—ã„ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ã¯ã€ç¯€åº¦ã‚’å¾…ã£ã¦ã„ã¾ã™', 'ã“ã‚“ã«ã¡ã¯ã€&lt;br /&gt;ã‚ãªãŸãŒæ–°ã—ã„ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ã‚’ç¢ºèªã™ã‚‹ãŸã‚ã«ã”é€£çµ¡ã‚’ãŠé¡˜ã„ã„ãŸã—ã¾ã™ã€‚', 1454199422),
(36, 2, 'í™•ì¸ ë‚´ìš© ì¶”ê°€', 'ko', '', 'ìƒˆë¡œìš´ ë‚´ìš©ì€ ì¤‘ìž¬ë¥¼ ê¸°ë‹¤ë¦¬ê³ ìžˆë‹¤', 'ì•ˆë…•í•˜ì„¸ìš”,&lt;br /&gt;ë‹¹ì‹ ì´ ìƒˆë¡œìš´ ë‚´ìš©ì„ í™•ì¸í•˜ê¸° ìœ„í•´ ì—°ë½ì„ ë¶€íƒë“œë¦½ë‹ˆë‹¤.', 1454199463),
(37, 2, 'à¹€à¸žà¸´à¹ˆà¸¡à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸—à¸µà¹ˆà¸ˆà¸°à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸š', 'th', '', 'à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¹ƒà¸«à¸¡à¹ˆà¸à¸³à¸¥à¸±à¸‡à¸£à¸­à¸à¸²à¸£à¸à¸¥à¸±à¹ˆà¸™à¸à¸£à¸­à¸‡', 'à¸ªà¸§à¸±à¸ªà¸”à¸µ,&lt;br /&gt;à¸‚à¸­à¸šà¸„à¸¸à¸“à¸—à¸µà¹ˆà¸ˆà¸°à¸•à¸´à¸”à¸•à¹ˆà¸­à¸„à¸¸à¸“à¹€à¸žà¸·à¹ˆà¸­à¸•à¸£à¸§à¸ˆà¸ªà¸­à¸šà¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¹ƒà¸«à¸¡à¹ˆ', 1454199497),
(38, 2, 'æ–°å¢žå†…å®¹æ£€æŸ¥', 'cn', '', 'æ–°å†…å®¹æ­£åœ¨ç­‰å¾…å®¡æ ¸', 'æ‚¨å¥½ï¼Œ&lt;br /&gt;æ„Ÿè°¢æ‚¨ä¸Žæ‚¨è”ç³»ï¼Œç¡®è®¤æ–°çš„å†…å®¹ã€‚', 1454199524),
(39, 2, '×”×•×¡×£ ×ª×•×›×Ÿ ×›×“×™ ×œ×‘×“×•×§', 'iw', '', '×ª×•×›×Ÿ ×—×“×© ×ž×ž×ª×™×Ÿ ×œ×ž×ª×™× ×•×ª', '×©×œ×•×,&lt;br /&gt;×ª×•×“×” ×œ×š ×œ×™×¦×•×¨ ××™×ª×š ×§×©×¨ ×›×“×™ ×œ×•×•×“× ×ª×•×›×Ÿ ×—×“×©.', 1454199573),
(40, 2, 'Ø¥Ø¶Ø§ÙØ© Ù…Ø­ØªÙˆÙ‰ Ù„Ù„ØªØ­Ù‚Ù‚', 'ar', '', 'Ù…Ø­ØªÙˆÙ‰ Ø¬Ø¯ÙŠØ¯ ÙŠÙ†ØªØ¸Ø± Ø§Ù„Ø§Ø¹ØªØ¯Ø§Ù„', 'Ø£Ù‡Ù„Ø§ØŒ&lt;br /&gt;Ø´ÙƒØ±Ø§ Ù„Ù„Ø§ØªØµØ§Ù„ Ø¨Ùƒ Ù„Ù„ØªØ­Ù‚Ù‚ Ù…Ù† Ù…Ø­ØªÙˆÙ‰ Ø¬Ø¯ÙŠØ¯.', 1454199620),
(41, 3, 'Accepted content', 'en', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454191211),
(42, 3, 'Contenu acceptÃ©', 'fr', '', 'Votre contenu est en ligne', 'Salut,&lt;br /&gt;Votre contenu est maintenant en ligne.', 1454244760),
(43, 3, 'Akzeptierte Inhalte', 'de', '', 'Ihre Inhalte online?', 'Hallo,&lt;br /&gt;Ihr Inhalt ist jetzt online.', 1454244675),
(44, 3, 'Contenido aceptado', 'es', '', 'Su contenido estÃ¡ en lÃ­nea', 'Hola,&lt;br /&gt;Su contenido est&aacute; ahora en l&iacute;nea.', 1454244631),
(45, 3, 'Akceptowane treÅ›Ä‡', 'pl', '', 'TreÅ›Ä‡ jest on-line', 'Halo,&lt;br /&gt;TreÅ›Ä‡ jest online.', 1454244573),
(46, 3, 'Ð¿Ñ€Ð¸Ð¹Ð½ÑÑ‚Ð¾ Ð·Ð¼Ñ–ÑÑ‚', 'uk', '', 'Ð’Ð°ÑˆÐµ Ð·Ð¼Ñ–ÑÑ‚ Ð½Ð° ÑÐ°Ð¹Ñ‚Ñ–', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ,&lt;br /&gt;Ð’Ð°ÑˆÐµ Ð·Ð¼Ñ–ÑÑ‚ Ð¾Ð½Ð»Ð°Ð¹Ð½.', 1454244540),
(47, 3, 'ÐŸÑ€Ð¸Ð½ÑÑ‚Ð¾ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ', 'ru', '', 'Ð’Ð°ÑˆÐµ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ Ð½Ð° ÑÐ°Ð¹Ñ‚Ðµ', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ,&lt;br /&gt;Ð’Ð°ÑˆÐµ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ Ð¾Ð½Ð»Ð°Ð¹Ð½.', 1454244484),
(48, 3, 'Kabul iÃ§erik', 'tu', '', 'Ä°Ã§erik Ã§evrimiÃ§i', 'Merhaba,&lt;br /&gt;Ä°&ccedil;erik artÄ±k &ccedil;evrimi&ccedil;i.', 1454244459),
(49, 3, 'ConteÃºdo accepted', 'po', '', 'Seu conteÃºdo estÃ¡ online', 'Ol&aacute;,&lt;br /&gt;Seu conte&uacute;do est&aacute; agora online.', 1454244416),
(50, 3, 'GodkÃ¤nda innehÃ¥ll', 'su', '', 'Ditt innehÃ¥ll Ã¤r inte uppkopplad', 'Hall&aring;,&lt;br /&gt;Ditt inneh&aring;ll &auml;r nu p&aring; n&auml;tet.', 1454244373),
(51, 3, 'Contenuti accettate', 'it', '', 'Il contenuto Ã¨ in linea', 'Ciao,&lt;br /&gt;Il contenuto &egrave; ora online.', 1454244335),
(52, 3, 'PrijatÃ© obsah', 'sk', '', 'VÃ¡Å¡ obsah je on-line', 'Ahoj,&lt;br /&gt;V&aacute;&scaron; obsah je teraz online.', 1454244295),
(53, 3, 'Konten diterima', 'id', '', 'Konten Anda secara online', 'Halo,&lt;br /&gt;Konten Anda sekarang online.', 1454244246),
(54, 3, 'à¤¸à¥à¤µà¥€à¤•à¥ƒà¤¤ à¤•à¤‚à¤Ÿà¥‡à¤‚à¤Ÿ', 'hi', '', 'à¤…à¤ªà¤¨à¥€ à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤‘à¤¨à¤²à¤¾à¤‡à¤¨ à¤¹à¥ˆ', 'à¤¨à¤®à¤¸à¥à¤¤à¥‡,&lt;br /&gt;à¤…à¤ªà¤¨à¥€ à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤…à¤¬ à¤‘à¤¨à¤²à¤¾à¤‡à¤¨ à¤¹à¥ˆà¥¤', 1454244199),
(55, 3, 'æ‰¿èªæ¸ˆã¿ã‚³ãƒ³ãƒ†ãƒ³ãƒ„', 'ja', '', 'ã‚ãªãŸã®ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ãŒã‚ªãƒ³ãƒ©ã‚¤ãƒ³ã§ã™', 'ã“ã‚“ã«ã¡ã¯ã€&lt;br /&gt;ã‚ãªãŸã®ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ãŒã‚ªãƒ³ãƒ©ã‚¤ãƒ³ã«ãªã‚Šã¾ã—ãŸã€‚', 1454244159),
(56, 3, 'ìˆ˜ë½ ë‚´ìš©', 'ko', '', 'ì½˜í…ì¸ ëŠ” ì˜¨ë¼ì¸', 'ì•ˆë…•í•˜ì„¸ìš”,&lt;br /&gt;ì½˜í…ì¸ ëŠ” ì˜¨ë¼ì¸ ì§€ê¸ˆì´ë‹¤.', 1454244117),
(57, 3, 'à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸—à¸µà¹ˆà¸¢à¸­à¸¡à¸£à¸±à¸š', 'th', '', 'à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸‚à¸­à¸‡à¸„à¸¸à¸“à¸­à¸­à¸™à¹„à¸¥à¸™à¹Œ', 'à¸ªà¸§à¸±à¸ªà¸”à¸µ,&lt;br /&gt;à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸‚à¸­à¸‡à¸„à¸¸à¸“à¸­à¸­à¸™à¹„à¸¥à¸™à¹Œà¸‚à¸“à¸°à¸™à¸µà¹‰', 1454244085),
(58, 3, 'æŽ¥å—å†…å®¹', 'cn', '', 'ä½ çš„å†…å®¹æ˜¯åœ¨çº¿', 'æ‚¨å¥½ï¼Œ&lt;br /&gt;ä½ çš„å†…å®¹æ˜¯çŽ°åœ¨ç½‘ä¸Šã€‚', 1454244055),
(59, 3, '×ª×•×›×Ÿ ×ž×§×•×‘×œ', 'iw', '', '×”×ª×•×›×Ÿ ×©×œ×š ×”×•× ×ž×§×•×•×Ÿ', '&lt;div style=&quot;text-align:right;&quot;&gt;×©×œ×•×,&lt;/div&gt;\n&lt;div style=&quot;text-align:right;&quot;&gt;×”×ª×•×›×Ÿ ×©×œ×š ×”×•× ×¢×›×©×™×• ×‘××™× ×˜×¨× ×˜.&lt;/div&gt;', 1454244027),
(60, 3, 'Ø§Ù„Ù…Ø­ØªÙˆÙ‰ Ù…Ù‚Ø¨ÙˆÙ„', 'ar', '', 'Ø§Ù„Ù…Ø­ØªÙˆÙ‰ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ù‡Ùˆ Ø¹Ù„Ù‰ Ø§Ù„Ø§Ù†ØªØ±Ù†Øª', '&lt;div style=&quot;text-align:right;&quot;&gt;Ø£Ù‡Ù„Ø§ØŒ&lt;/div&gt;\n&lt;div style=&quot;text-align:right;&quot;&gt;Ø§Ù„Ù…Ø­ØªÙˆÙ‰ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ Ù‡Ùˆ Ø§Ù„Ø¢Ù† Ø¹Ù„Ù‰ Ø´Ø¨ÙƒØ© Ø§Ù„Ø¥Ù†ØªØ±Ù†Øª.&lt;/div&gt;', 1454243975),
(61, 4, 'Content refused', 'en', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454191260),
(62, 4, 'Contenu refusÃ©', 'fr', '', 'Votre contenu n&#39;est pas approuvÃ©', 'Salut,&lt;br /&gt;Votre contenu n&#039;est pas approuv&eacute;.', 1454245040),
(63, 4, 'Inhalt weigerte', 'de', '', 'Ihr Inhalt ist nicht zugelassen', 'Hallo,&lt;br /&gt;Ihr Inhalt ist nicht zugelassen.', 1454245059),
(64, 4, 'Contenido negÃ³', 'es', '', 'Su contenido no estÃ¡ aprobado', 'Hola,&lt;br /&gt;Su contenido no ha sido aprobado.', 1454245078),
(65, 4, 'ZawartoÅ›Ä‡ odmÃ³wiÅ‚', 'pl', '', 'ZawartoÅ›Ä‡ nie jest zatwierdzony', 'Halo,&lt;br /&gt;ZawartoÅ›Ä‡ nie jest zatwierdzony.', 1454245103),
(66, 4, 'Ð²Ð¼Ñ–ÑÑ‚ Ð²Ñ–Ð´Ð¼Ð¾Ð²Ð¸Ð²ÑÑ', 'uk', '', 'Ð’Ð°ÑˆÐµ Ð·Ð¼Ñ–ÑÑ‚ Ð½Ðµ Ð·Ð°Ñ‚Ð²ÐµÑ€Ð´Ð¶ÐµÐ½Ñ–', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ,&lt;br /&gt;Ð’Ð°ÑˆÐµ Ð·Ð¼Ñ–ÑÑ‚ Ð½Ðµ Ð·Ð°Ñ‚Ð²ÐµÑ€Ð´Ð¶ÐµÐ½Ð¸Ð¹.', 1454245129),
(67, 4, 'Ð¡Ð¾Ð´ÐµÑ€Ð¶Ð¸Ð¼Ð¾Ðµ Ð¾Ñ‚ÐºÐ°Ð·Ð°Ð»ÑÑ', 'ru', '', 'Ð’Ð°ÑˆÐµ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ Ð½Ðµ ÑƒÑ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½Ñ‹', 'Ð—Ð´Ñ€Ð°Ð²ÑÑ‚Ð²ÑƒÐ¹Ñ‚Ðµ,&lt;br /&gt;Ð’Ð°ÑˆÐµ ÑÐ¾Ð´ÐµÑ€Ð¶Ð°Ð½Ð¸Ðµ Ð½Ðµ ÑƒÑ‚Ð²ÐµÑ€Ð¶Ð´ÐµÐ½.', 1454245155),
(68, 4, 'Ä°Ã§erik reddetti', 'tu', '', 'Ä°Ã§erik onaylanmamÄ±ÅŸ', 'Merhaba,&lt;br /&gt;Ä°&ccedil;erik onaylanmÄ±ÅŸ deÄŸildir.', 1454245181),
(69, 4, 'ConteÃºdo recusou', 'po', '', 'Seu conteÃºdo nÃ£o Ã© aprovado', 'Ol&aacute;,&lt;br /&gt;Seu conte&uacute;do n&atilde;o &eacute; aprovado.', 1454245211),
(70, 4, 'InnehÃ¥ll vÃ¤grade', 'su', '', 'Ditt innehÃ¥ll Ã¤r inte godkÃ¤nd', 'Hall&aring;,&lt;br /&gt;Ditt inneh&aring;ll &auml;r inte godk&auml;nd.', 1454245245),
(71, 4, 'Contenuto rifiutato', 'it', '', 'Il contenuto non Ã¨ stato approvato', 'Ciao,&lt;br /&gt;Il contenuto non &egrave; stato approvato.', 1454245278),
(72, 4, 'Obsah odmietol', 'sk', '', 'Svoj obsah nie je schvÃ¡lenÃ¡', 'Ahoj,&lt;br /&gt;Svoj obsah nie je schv&aacute;len&yacute;.', 1454245320),
(73, 4, 'Konten menolak', 'id', '', 'Konten Anda tidak disetujui', 'Halo,&lt;br /&gt;Konten Anda tidak disetujui.', 1454245360),
(74, 4, 'à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤¸à¥‡ à¤‡à¤¨à¤•à¤¾à¤° à¤•à¤° à¤¦à¤¿à¤¯à¤¾', 'hi', '', 'à¤…à¤ªà¤¨à¥€ à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤¸à¥à¤µà¥€à¤•à¥ƒà¤¤ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆ', 'à¤¨à¤®à¤¸à¥à¤¤à¥‡,&lt;br /&gt;à¤…à¤ªà¤¨à¥€ à¤¸à¤¾à¤®à¤—à¥à¤°à¥€ à¤¸à¥à¤µà¥€à¤•à¥ƒà¤¤ à¤¨à¤¹à¥€à¤‚ à¤¹à¥ˆà¥¤', 1454245387),
(75, 4, 'ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ã¯æ‹’å¦', 'ja', '', 'ã‚ãªãŸã®ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ãŒæ‰¿èªã•ã‚Œã¦ã„ã¾ã›ã‚“', 'ã“ã‚“ã«ã¡ã¯ã€&lt;br /&gt;ã‚ãªãŸã®ã‚³ãƒ³ãƒ†ãƒ³ãƒ„ãŒæ‰¿èªã•ã‚Œã¦ã„ã¾ã›ã‚“ã€‚', 1454245435),
(76, 4, 'ì½˜í…ì¸  ê±°ë¶€', 'ko', '', 'ì½˜í…ì¸ ê°€ ìŠ¹ì¸ë˜ì§€', 'ì•ˆë…•í•˜ì„¸ìš”,&lt;br /&gt;ì½˜í…ì¸  ìŠ¹ì¸ë˜ì§€ ì•ŠìŠµë‹ˆë‹¤.', 1454245482),
(77, 4, 'à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸›à¸à¸´à¹€à¸ªà¸˜', 'th', '', 'à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸‚à¸­à¸‡à¸„à¸¸à¸“à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸£à¸±à¸šà¸­à¸™à¸¸à¸¡à¸±à¸•à¸´', 'à¸ªà¸§à¸±à¸ªà¸”à¸µ,&lt;br /&gt;à¹€à¸™à¸·à¹‰à¸­à¸«à¸²à¸‚à¸­à¸‡à¸„à¸¸à¸“à¹„à¸¡à¹ˆà¹„à¸”à¹‰à¸£à¸±à¸šà¸­à¸™à¸¸à¸¡à¸±à¸•à¸´', 1454245513),
(78, 4, 'å†…å®¹æ‹’ç»', 'cn', '', 'æ‚¨çš„å†…å®¹ä¸è®¤å¯', 'æ‚¨å¥½ï¼Œ&lt;br /&gt;æ‚¨çš„å†…å®¹ä¸è®¤å¯ã€‚', 1454245539),
(79, 4, '×ª×•×›×Ÿ ×¡×¨×‘', 'iw', '', '×”×ª×•×›×Ÿ ×©×œ×š ×œ× ××•×©×¨', '&lt;div style=&quot;text-align:right;&quot;&gt;×©×œ×•×,&lt;/div&gt;\n&lt;div style=&quot;text-align:right;&quot;&gt;×”×ª×•×›×Ÿ ×©×œ×š ×œ× ×™××•×©×¨.&lt;/div&gt;', 1454245580),
(80, 4, 'Ø±ÙØ¶ Ø§Ù„Ù…Ø­ØªÙˆÙ‰', 'ar', '', 'Ù„Ù… ØªØªÙ… Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ø§Ù„Ù…Ø­ØªÙˆÙ‰ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ', '&lt;div style=&quot;text-align:right;&quot;&gt;Ø£Ù‡Ù„Ø§ØŒ&lt;/div&gt;\n&lt;div style=&quot;text-align:right;&quot;&gt;Ù„Ù… ØªØªÙ… Ø§Ù„Ù…ÙˆØ§ÙÙ‚Ø© Ø¹Ù„Ù‰ Ø§Ù„Ù…Ø­ØªÙˆÙ‰ Ø§Ù„Ø®Ø§Øµ Ø¨Ùƒ.&lt;/div&gt;', 1454245629);

-- --------------------------------------------------------

--
-- Table structure for table `_dg_email_notification_version`
--

CREATE TABLE `_dg_email_notification_version` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) DEFAULT NULL,
  `pseudo` varchar(255) DEFAULT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `langue` varchar(255) DEFAULT NULL,
  `type` varchar(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message_tinymce` text,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_dg_email_notification_version`
--

INSERT INTO `_dg_email_notification_version` (`id`, `id_content`, `title`, `pseudo`, `id_user`, `id_groupe`, `langue`, `type`, `subject`, `message_tinymce`, `date_creation`) VALUES
(1, 2, 'Add content to check', 'doorgets', 7, 11, 'fr', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454198856),
(2, 2, 'Add content to check', 'doorgets', 7, 11, 'de', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454198895),
(3, 2, 'Add content to check', 'doorgets', 7, 11, 'es', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454198942),
(4, 2, 'Add content to check', 'doorgets', 7, 11, 'pl', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454198990),
(5, 2, 'Add content to check', 'doorgets', 7, 11, 'uk', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199041),
(6, 2, 'Add content to check', 'doorgets', 7, 11, 'ru', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199081),
(7, 2, 'Add content to check', 'doorgets', 7, 11, 'tu', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199121),
(8, 2, 'Add content to check', 'doorgets', 7, 11, 'po', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199150),
(9, 2, 'Add content to check', 'doorgets', 7, 11, 'su', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199185),
(10, 2, 'Add content to check', 'doorgets', 7, 11, 'it', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199223),
(11, 2, 'Add content to check', 'doorgets', 7, 11, 'sk', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199293),
(12, 2, 'Add content to check', 'doorgets', 7, 11, 'id', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199328),
(13, 2, 'Add content to check', 'doorgets', 7, 11, 'hi', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199357),
(14, 2, 'Add content to check', 'doorgets', 7, 11, 'ja', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199422),
(15, 2, 'Add content to check', 'doorgets', 7, 11, 'ko', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199463),
(16, 2, 'Add content to check', 'doorgets', 7, 11, 'th', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199497),
(17, 2, 'Add content to check', 'doorgets', 7, 11, 'cn', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199524),
(18, 2, 'Add content to check', 'doorgets', 7, 11, 'iw', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199573),
(19, 2, 'Add content to check', 'doorgets', 7, 11, 'ar', '', 'New content is awaiting moderation', 'Hello,&lt;br /&gt;Thank you to contact you to verify a new content.', 1454199620),
(20, 3, 'Accepted content', 'doorgets', 7, 11, 'ar', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454243975),
(21, 3, 'Accepted content', 'doorgets', 7, 11, 'iw', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244027),
(22, 3, 'Accepted content', 'doorgets', 7, 11, 'cn', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244055),
(23, 3, 'Accepted content', 'doorgets', 7, 11, 'th', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244085),
(24, 3, 'Accepted content', 'doorgets', 7, 11, 'ko', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244117),
(25, 3, 'Accepted content', 'doorgets', 7, 11, 'ja', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244159),
(26, 3, 'Accepted content', 'doorgets', 7, 11, 'hi', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244199),
(27, 3, 'Accepted content', 'doorgets', 7, 11, 'id', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244246),
(28, 3, 'Accepted content', 'doorgets', 7, 11, 'sk', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244295),
(29, 3, 'Accepted content', 'doorgets', 7, 11, 'it', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244335),
(30, 3, 'Accepted content', 'doorgets', 7, 11, 'su', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244373),
(31, 3, 'Accepted content', 'doorgets', 7, 11, 'po', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244416),
(32, 3, 'Accepted content', 'doorgets', 7, 11, 'tu', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244459),
(33, 3, 'Accepted content', 'doorgets', 7, 11, 'ru', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244484),
(34, 3, 'Accepted content', 'doorgets', 7, 11, 'uk', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244540),
(35, 3, 'Accepted content', 'doorgets', 7, 11, 'pl', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244573),
(36, 3, 'Accepted content', 'doorgets', 7, 11, 'es', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244631),
(37, 3, 'Accepted content', 'doorgets', 7, 11, 'de', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244675),
(38, 3, 'Accepted content', 'doorgets', 7, 11, 'fr', '', 'Your content is online', 'Hello,&lt;br /&gt;Your content is now online.', 1454244760),
(39, 4, 'Content refused', 'doorgets', 7, 11, 'fr', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454244882),
(40, 4, 'Content refused', 'doorgets', 7, 11, 'de', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454244904),
(41, 4, 'Content refused', 'doorgets', 7, 11, 'es', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454244942),
(42, 4, 'Contenu refusÃ©', 'doorgets', 7, 11, 'fr', '', 'Votre contenu n&#39;est pas approuvÃ©', 'Salut,&lt;br /&gt;Votre contenu est maintenant en ligne.', 1454245040),
(43, 4, 'Inhalt weigerte', 'doorgets', 7, 11, 'de', '', 'Ihr Inhalt ist nicht zugelassen', 'Hallo,&lt;br /&gt;Ihr Inhalt ist jetzt online.', 1454245059),
(44, 4, 'Contenido negÃ³', 'doorgets', 7, 11, 'es', '', 'Su contenido no estÃ¡ aprobado', 'Hola,&lt;br /&gt;Su contenido est&aacute; ahora en l&iacute;nea.', 1454245078),
(45, 4, 'Content refused', 'doorgets', 7, 11, 'pl', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245103),
(46, 4, 'Content refused', 'doorgets', 7, 11, 'uk', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245129),
(47, 4, 'Content refused', 'doorgets', 7, 11, 'ru', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245155),
(48, 4, 'Content refused', 'doorgets', 7, 11, 'tu', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245181),
(49, 4, 'Content refused', 'doorgets', 7, 11, 'po', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245211),
(50, 4, 'Content refused', 'doorgets', 7, 11, 'su', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245245),
(51, 4, 'Content refused', 'doorgets', 7, 11, 'it', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245278),
(52, 4, 'Content refused', 'doorgets', 7, 11, 'sk', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245320),
(53, 4, 'Content refused', 'doorgets', 7, 11, 'id', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245360),
(54, 4, 'Content refused', 'doorgets', 7, 11, 'hi', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245387),
(55, 4, 'Content refused', 'doorgets', 7, 11, 'ja', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245435),
(56, 4, 'Content refused', 'doorgets', 7, 11, 'ko', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245482),
(57, 4, 'Content refused', 'doorgets', 7, 11, 'th', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245513),
(58, 4, 'Content refused', 'doorgets', 7, 11, 'cn', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245539),
(59, 4, 'Content refused', 'doorgets', 7, 11, 'iw', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245580),
(60, 4, 'Content refused', 'doorgets', 7, 11, 'ar', '', 'Your content is not approved', 'Hello,&lt;br /&gt;Your content is not approved.', 1454245629);

-- --------------------------------------------------------

--
-- Table structure for table `_dg_files`
--

CREATE TABLE `_dg_files` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_files_traduction`
--

CREATE TABLE `_dg_files_traduction` (
  `id` int(11) NOT NULL,
  `id_file` int(11) DEFAULT '0',
  `langue` varchar(11) COLLATE utf8_spanish_ci DEFAULT '0',
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_firewall`
--

CREATE TABLE `_dg_firewall` (
  `id` int(11) NOT NULL,
  `adresse_ip` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `level` int(11) NOT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_dg_firewall`
--

INSERT INTO `_dg_firewall` (`id`, `adresse_ip`, `level`, `date_creation`) VALUES
(1, '127.0.0.1', 1, 1541635417);

-- --------------------------------------------------------

--
-- Table structure for table `_dg_inbox`
--

CREATE TABLE `_dg_inbox` (
  `id` int(11) NOT NULL,
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `sujet` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nom` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `message` text COLLATE utf8_spanish_ci,
  `telephone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `lu` int(11) NOT NULL DEFAULT '0',
  `archive` int(11) NOT NULL DEFAULT '0',
  `date_creation` int(11) NOT NULL DEFAULT '0',
  `date_archive` int(11) NOT NULL DEFAULT '0',
  `date_lu` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_links`
--

CREATE TABLE `_dg_links` (
  `id` int(11) NOT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `label` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_newsletter`
--

CREATE TABLE `_dg_newsletter` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL DEFAULT '0',
  `id_groupe` int(11) NOT NULL DEFAULT '0',
  `nom` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `newsletter` int(11) DEFAULT '1',
  `client_ip` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_newsletter_emailling_campagne`
--

CREATE TABLE `_dg_newsletter_emailling_campagne` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_user_groupe` int(11) DEFAULT '0',
  `id_groupe` int(11) NOT NULL,
  `id_models` int(11) NOT NULL,
  `statut` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `titre` text COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `message` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) DEFAULT '0',
  `date_modification` int(11) DEFAULT '0',
  `date_validation` int(11) DEFAULT '0',
  `date_envoi` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_newsletter_emailling_groupe`
--

CREATE TABLE `_dg_newsletter_emailling_groupe` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_newsletter_emailling_models`
--

CREATE TABLE `_dg_newsletter_emailling_models` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sujet` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_onepage`
--

CREATE TABLE `_dg_onepage` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `partage` int(11) NOT NULL DEFAULT '1',
  `facebook` int(11) DEFAULT '0',
  `id_facebook` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `disqus` int(11) DEFAULT '0',
  `id_disqus` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mailsender` int(11) DEFAULT '0',
  `sendto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `in_rss` int(11) NOT NULL DEFAULT '0',
  `ordre` int(11) NOT NULL DEFAULT '0',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `id_modo` int(111) DEFAULT NULL,
  `val_modo` int(11) DEFAULT '0',
  `date_modo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_onepage_traduction`
--

CREATE TABLE `_dg_onepage_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `menu_position` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'top',
  `backimage_fixe` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'yes',
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_onepage_version`
--

CREATE TABLE `_dg_onepage_version` (
  `id` int(11) NOT NULL,
  `active` int(11) DEFAULT '0',
  `id_content` int(11) NOT NULL DEFAULT '0',
  `pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `menu_position` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'top',
  `backimage_fixe` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'yes',
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_page`
--

CREATE TABLE `_dg_page` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `active` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `partage` int(11) NOT NULL DEFAULT '1',
  `facebook` int(11) DEFAULT '0',
  `id_facebook` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `disqus` int(11) DEFAULT '0',
  `id_disqus` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mailsender` int(11) DEFAULT '0',
  `sendto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `in_rss` int(11) NOT NULL DEFAULT '0',
  `ordre` int(11) NOT NULL DEFAULT '0',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `id_modo` int(111) DEFAULT NULL,
  `val_modo` int(11) DEFAULT '0',
  `date_modo` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_dg_page`
--

INSERT INTO `_dg_page` (`id`, `id_user`, `id_groupe`, `uri`, `active`, `comments`, `partage`, `facebook`, `id_facebook`, `disqus`, `id_disqus`, `mailsender`, `sendto`, `in_rss`, `ordre`, `groupe_traduction`, `date_creation`, `id_modo`, `val_modo`, `date_modo`) VALUES
(2, 0, 0, 'home', 2, 0, 1, 0, '', 0, '', 0, '', 0, 0, 'a:20:{s:2:"en";s:2:"21";s:2:"fr";s:2:"22";s:2:"de";s:2:"23";s:2:"es";s:2:"24";s:2:"pl";s:2:"25";s:2:"uk";s:2:"26";s:2:"ru";s:2:"27";s:2:"tu";s:2:"28";s:2:"po";s:2:"29";s:2:"su";s:2:"30";s:2:"it";s:2:"31";s:2:"sk";s:2:"32";s:2:"id";s:2:"33";s:2:"hi";s:2:"34";s:2:"ja";s:2:"35";s:2:"ko";s:2:"36";s:2:"th";s:2:"37";s:2:"cn";s:2:"38";s:2:"iw";s:2:"39";s:2:"ar";s:2:"40";}', 1453985931, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_dg_page_traduction`
--

CREATE TABLE `_dg_page_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_dg_page_traduction`
--

INSERT INTO `_dg_page_traduction` (`id`, `id_content`, `langue`, `titre`, `description`, `article_tinymce`, `uri`, `uri_module`, `meta_titre`, `meta_description`, `meta_keys`, `meta_facebook_type`, `meta_facebook_titre`, `meta_facebook_description`, `meta_facebook_image`, `meta_twitter_type`, `meta_twitter_titre`, `meta_twitter_description`, `meta_twitter_image`, `meta_twitter_player`, `date_modification`) VALUES
(21, 2, 'en', 'Home', '', 'Welcome', '', 'home', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1455107159),
(22, 2, 'fr', 'Accueil', '', '&lt;span&gt;Welcome&lt;/span&gt;', '', 'home', 'Accueil', '', '', 'article', 'Accueil', '', '', 'app', 'Accueil', '', '', '', 1455107139),
(23, 2, 'de', 'Heim', '', 'Heim', '', 'home', 'Heim', '', '', 'article', 'Heim', '', '', 'app', 'Heim', '', '', '', 1455107168),
(24, 2, 'es', 'Casa', '', 'Casa', '', 'home', 'Casa', '', '', 'article', 'Casa', '', '', 'app', 'Casa', '', '', '', 1455107210),
(25, 2, 'pl', 'Dom', '', 'Dom', '', 'home', 'Dom', '', '', 'article', 'Dom', '', '', 'app', 'Dom', '', '', '', 1455107219),
(26, 2, 'uk', 'Ana', '', 'Ana', '', 'home', 'Ana', '', '', 'article', 'Ana', '', '', 'app', 'Ana', '', '', '', 1454248766),
(27, 2, 'ru', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', '', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', '', 'home', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', '', '', 'article', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', '', '', 'app', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', '', '', '', 1454248799),
(28, 2, 'tu', 'Ana', '', 'Ana', '', 'home', 'Ana', '', '', 'article', 'Ana', '', '', 'app', 'Ana', '', '', '', 1454248817),
(29, 2, 'po', 'InÃ­cio', '', 'In&iacute;cio', '', 'home', 'InÃ­cio', '', '', 'article', 'InÃ­cio', '', '', 'app', 'InÃ­cio', '', '', '', 1454248897),
(30, 2, 'su', 'Hem', '', 'Hem', '', 'home', 'Hem', '', '', 'article', 'Hem', '', '', 'app', 'Hem', '', '', '', 1454248916),
(31, 2, 'it', 'Casa', '', 'Casa', '', 'home', 'Casa', '', '', 'article', 'Casa', '', '', 'app', 'Casa', '', '', '', 1454248931),
(32, 2, 'sk', 'DomÅ¯', '', 'DomÅ¯', '', 'home', 'DomÅ¯', '', '', 'article', 'DomÅ¯', '', '', 'app', 'DomÅ¯', '', '', '', 1454249002),
(33, 2, 'id', 'Rumah', '', 'Rumah', '', 'home', 'Rumah', '', '', 'article', 'Rumah', '', '', 'app', 'Rumah', '', '', '', 1454248977),
(34, 2, 'hi', 'à¤˜à¤°', '', 'à¤˜à¤°', '', 'home', 'à¤˜à¤°', '', '', 'article', 'à¤˜à¤°', '', '', 'app', 'à¤˜à¤°', '', '', '', 1454247335),
(35, 2, 'ja', 'ãƒ›ãƒ¼ãƒ ', '', 'ãƒ›ãƒ¼ãƒ ', '', 'home', 'ãƒ›ãƒ¼ãƒ ', '', '', 'article', 'ãƒ›ãƒ¼ãƒ ', '', '', 'app', 'ãƒ›ãƒ¼ãƒ ', '', '', '', 1454247366),
(36, 2, 'ko', 'ì§‘', '', 'ì§‘', '', 'home', 'ì§‘', '', '', 'article', 'ì§‘', '', '', 'app', 'ì§‘', '', '', '', 1454247386),
(37, 2, 'th', 'à¸šà¹‰à¸²à¸™', '', 'à¸šà¹‰à¸²à¸™', '', 'home', 'à¸šà¹‰à¸²à¸™', '', '', 'article', 'à¸šà¹‰à¸²à¸™', '', '', 'app', 'à¸šà¹‰à¸²à¸™', '', '', '', 1454247240),
(38, 2, 'cn', 'Home', '', '', '', 'home', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(39, 2, 'iw', '×‘Ö¼Ö·×™Ö´×ª', '', '×‘Ö¼Ö·×™Ö´×ª', '', 'home', '×‘Ö¼Ö·×™Ö´×ª', '', '', 'article', '×‘Ö¼Ö·×™Ö´×ª', '', '', 'app', '×‘Ö¼Ö·×™Ö´×ª', '', '', '', 1454246890),
(40, 2, 'ar', 'Ù…Ù†Ø²Ù„', '', 'Ù…Ù†Ø²Ù„', '', 'home', 'Ù…Ù†Ø²Ù„', '', '', 'article', 'Ù…Ù†Ø²Ù„', '', '', 'app', 'Ù…Ù†Ø²Ù„', '', '', '', 1454246845);

-- --------------------------------------------------------

--
-- Table structure for table `_dg_page_version`
--

CREATE TABLE `_dg_page_version` (
  `id` int(11) NOT NULL,
  `active` int(11) DEFAULT '0',
  `id_content` int(11) NOT NULL DEFAULT '0',
  `pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_saas`
--

CREATE TABLE `_dg_saas` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `domain` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `domain_real` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `slogan` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_stars`
--

CREATE TABLE `_dg_stars` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `uri_content` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `stars` int(11) DEFAULT '0',
  `url` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `adress_ip` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'en'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_survey`
--

CREATE TABLE `_dg_survey` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0',
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_survey_response`
--

CREATE TABLE `_dg_survey_response` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_session` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `value` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_survey_traduction`
--

CREATE TABLE `_dg_survey_traduction` (
  `id` int(11) NOT NULL,
  `id_survey` int(11) NOT NULL,
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `langue` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `question` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `question_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_a` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_a_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_b` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_b_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_c` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_c_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_d` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_d_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_e` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_e_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_f` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_f_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_g` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_g_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_h` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_h_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_i` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `response_i_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_translator`
--

CREATE TABLE `_dg_translator` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `sentence` text COLLATE utf8_spanish_ci,
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_translator_traduction`
--

CREATE TABLE `_dg_translator_traduction` (
  `id` int(11) NOT NULL,
  `id_translator` int(11) DEFAULT '0',
  `langue` varchar(11) COLLATE utf8_spanish_ci DEFAULT '0',
  `translated_sentence` text COLLATE utf8_spanish_ci,
  `is_translated` int(11) DEFAULT '0',
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_dg_translator_version`
--

CREATE TABLE `_dg_translator_version` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL DEFAULT '0',
  `pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `translated_sentence` text COLLATE utf8_spanish_ci,
  `is_translated` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_discountcode`
--

CREATE TABLE `_discountcode` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_moderation`
--

CREATE TABLE `_moderation` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_groupe` int(11) DEFAULT '0',
  `id_content` int(11) DEFAULT '0',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `type_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `action` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(10) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_modules`
--

CREATE TABLE `_modules` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `active` int(11) DEFAULT '1',
  `author_badge` int(11) DEFAULT '0',
  `is_first` int(11) DEFAULT '0',
  `plugins` text COLLATE utf8_spanish_ci,
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `bynum` int(11) DEFAULT '10',
  `avoiraussi` int(11) NOT NULL DEFAULT '3',
  `image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `template_index` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `template_content` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `notification_mail` int(11) NOT NULL DEFAULT '1',
  `uri_notification_moderator` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uri_notification_user_success` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uri_notification_user_error` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `extras` text COLLATE utf8_spanish_ci,
  `redirection` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `recaptcha` int(11) NOT NULL DEFAULT '0',
  `with_password` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `public_module` int(11) NOT NULL DEFAULT '0',
  `public_comment` int(11) NOT NULL DEFAULT '0',
  `public_add` int(11) NOT NULL DEFAULT '0',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_modules`
--

INSERT INTO `_modules` (`id`, `type`, `uri`, `active`, `author_badge`, `is_first`, `plugins`, `groupe_traduction`, `bynum`, `avoiraussi`, `image`, `template_index`, `template_content`, `notification_mail`, `uri_notification_moderator`, `uri_notification_user_success`, `uri_notification_user_error`, `extras`, `redirection`, `recaptcha`, `with_password`, `password`, `public_module`, `public_comment`, `public_add`, `date_creation`) VALUES
(32, 'page', 'home', 1, 0, 1, '', 'a:20:{s:2:"en";s:3:"621";s:2:"fr";s:3:"622";s:2:"de";s:3:"623";s:2:"es";s:3:"624";s:2:"pl";s:3:"625";s:2:"uk";s:3:"626";s:2:"ru";s:3:"627";s:2:"tu";s:3:"628";s:2:"po";s:3:"629";s:2:"su";s:3:"630";s:2:"it";s:3:"631";s:2:"sk";s:3:"632";s:2:"id";s:3:"633";s:2:"hi";s:3:"634";s:2:"ja";s:3:"635";s:2:"ko";s:3:"636";s:2:"th";s:3:"637";s:2:"cn";s:3:"638";s:2:"iw";s:3:"639";s:2:"ar";s:3:"640";}', 10, 3, '', 'modules/page/page_content', 'modules/page/page_content', 0, '', '', '', '', '', 0, 0, '', 0, 0, 0, 1453985931),
(43, 'inbox', 'contact', 1, 0, 0, '', 'a:20:{s:2:"en";s:3:"841";s:2:"fr";s:3:"842";s:2:"de";s:3:"843";s:2:"es";s:3:"844";s:2:"pl";s:3:"845";s:2:"uk";s:3:"846";s:2:"ru";s:3:"847";s:2:"tu";s:3:"848";s:2:"po";s:3:"849";s:2:"su";s:3:"850";s:2:"it";s:3:"851";s:2:"sk";s:3:"852";s:2:"id";s:3:"853";s:2:"hi";s:3:"854";s:2:"ja";s:3:"855";s:2:"ko";s:3:"856";s:2:"th";s:3:"857";s:2:"cn";s:3:"858";s:2:"iw";s:3:"859";s:2:"ar";s:3:"860";}', 10, 3, '', 'modules/inbox/inbox_form', 'modules/inbox/inbox_form', 1, '', '', '', '', '', 0, 0, '', 0, 0, 0, 1454181961),
(44, 'blog', 'blog', 1, 1, 0, '', 'a:20:{s:2:"en";s:3:"861";s:2:"fr";s:3:"862";s:2:"de";s:3:"863";s:2:"es";s:3:"864";s:2:"pl";s:3:"865";s:2:"uk";s:3:"866";s:2:"ru";s:3:"867";s:2:"tu";s:3:"868";s:2:"po";s:3:"869";s:2:"su";s:3:"870";s:2:"it";s:3:"871";s:2:"sk";s:3:"872";s:2:"id";s:3:"873";s:2:"hi";s:3:"874";s:2:"ja";s:3:"875";s:2:"ko";s:3:"876";s:2:"th";s:3:"877";s:2:"cn";s:3:"878";s:2:"iw";s:3:"879";s:2:"ar";s:3:"880";}', 30, 3, '', 'modules/blog/blog_listing', 'modules/blog/blog_content', 0, 'add-content-to-check', 'accepted-content', 'content-refused', '', '', 0, 0, '', 0, 0, 0, 1454191290),
(45, 'news', 'news', 1, 1, 0, '', 'a:20:{s:2:"en";s:3:"881";s:2:"fr";s:3:"882";s:2:"de";s:3:"883";s:2:"es";s:3:"884";s:2:"pl";s:3:"885";s:2:"uk";s:3:"886";s:2:"ru";s:3:"887";s:2:"tu";s:3:"888";s:2:"po";s:3:"889";s:2:"su";s:3:"890";s:2:"it";s:3:"891";s:2:"sk";s:3:"892";s:2:"id";s:3:"893";s:2:"hi";s:3:"894";s:2:"ja";s:3:"895";s:2:"ko";s:3:"896";s:2:"th";s:3:"897";s:2:"cn";s:3:"898";s:2:"iw";s:3:"899";s:2:"ar";s:3:"900";}', 30, 3, '', 'modules/news/news_listing', 'modules/news/news_content', 0, 'add-content-to-check', 'accepted-content', 'content-refused', '', '', 0, 0, '', 0, 0, 0, 1454191319);

-- --------------------------------------------------------

--
-- Table structure for table `_modules_attributes`
--

CREATE TABLE `_modules_attributes` (
  `id` int(11) NOT NULL,
  `active` int(11) DEFAULT '0',
  `required` int(11) DEFAULT '2',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `params` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_modules_attributes_traduction`
--

CREATE TABLE `_modules_attributes_traduction` (
  `id` int(11) NOT NULL,
  `id_attribute` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_modules_attributes_values`
--

CREATE TABLE `_modules_attributes_values` (
  `id` int(11) NOT NULL,
  `uri_module` int(11) NOT NULL,
  `id_content` int(11) NOT NULL,
  `id_attribute` int(11) NOT NULL,
  `value` text COLLATE utf8_spanish_ci NOT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_modules_traduction`
--

CREATE TABLE `_modules_traduction` (
  `id` int(11) NOT NULL,
  `id_module` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `send_mail_to` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `top_tinymce` text COLLATE utf8_spanish_ci,
  `bottom_tinymce` text COLLATE utf8_spanish_ci,
  `extras` text COLLATE utf8_spanish_ci,
  `send_mail_user` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `send_mail_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `send_mail_email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `send_mail_sujet` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `send_mail_message` text COLLATE utf8_spanish_ci,
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_modules_traduction`
--

INSERT INTO `_modules_traduction` (`id`, `id_module`, `langue`, `nom`, `titre`, `description`, `send_mail_to`, `top_tinymce`, `bottom_tinymce`, `extras`, `send_mail_user`, `send_mail_name`, `send_mail_email`, `send_mail_sujet`, `send_mail_message`, `meta_titre`, `meta_description`, `meta_keys`, `meta_facebook_type`, `meta_facebook_titre`, `meta_facebook_description`, `meta_facebook_image`, `meta_twitter_type`, `meta_twitter_titre`, `meta_twitter_description`, `meta_twitter_image`, `meta_twitter_player`, `date_modification`) VALUES
(621, 32, 'en', 'Home', 'Home', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(622, 32, 'fr', 'Accueil', 'Accueil', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(623, 32, 'de', 'Heim', 'Heim', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(624, 32, 'es', 'Casa', 'Casa', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(625, 32, 'pl', 'Dom', 'Dom', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(626, 32, 'uk', 'Ana', 'Ana', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(627, 32, 'ru', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', 'Ð“Ð»Ð°Ð²Ð½Ð°Ñ', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(628, 32, 'tu', 'Ana', 'Ana', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(629, 32, 'po', 'InÃ­cio', 'InÃ­cio', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(630, 32, 'su', 'Hem', 'Hem', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(631, 32, 'it', 'Casa', 'Casa', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(632, 32, 'sk', 'DomÅ¯', 'DomÅ¯', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(633, 32, 'id', 'Rumah', 'Rumah', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(634, 32, 'hi', 'à¤˜à¤°', 'à¤˜à¤°', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(635, 32, 'ja', 'ãƒ›ãƒ¼ãƒ ', 'ãƒ›ãƒ¼ãƒ ', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(636, 32, 'ko', 'ì§‘', 'ì§‘', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(637, 32, 'th', 'à¸šà¹‰à¸²à¸™', 'à¸šà¹‰à¸²à¸™', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(638, 32, 'cn', 'å®¶', 'å®¶', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(639, 32, 'iw', '×‘Ö¼Ö·×™Ö´×ª', '×‘Ö¼Ö·×™Ö´×ª', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(640, 32, 'ar', 'Ù…Ù†Ø²Ù„', 'Ù…Ù†Ø²Ù„', '', '', '', '', '', '', '', '', '', '', 'Home', '', '', 'article', '', '', '', 'app', '', '', '', '', 1453985931),
(841, 43, 'en', 'Contact', 'Contact', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(842, 43, 'fr', 'Contact', 'Contact', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(843, 43, 'de', 'Kontakt', 'Kontakt', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(844, 43, 'es', 'Contacto', 'Contacto', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(845, 43, 'pl', 'Kontakt', 'Kontakt', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(846, 43, 'uk', 'ÐšÐ¾Ð½Ñ‚Ð°ÐºÑ‚', 'ÐšÐ¾Ð½Ñ‚Ð°ÐºÑ‚', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(847, 43, 'ru', 'ÐºÐ¾Ð½Ñ‚Ð°ÐºÑ‚', 'ÐºÐ¾Ð½Ñ‚Ð°ÐºÑ‚', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(848, 43, 'tu', 'Ä°letiÅŸim', 'Ä°letiÅŸim', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(849, 43, 'po', 'Contato', 'Contato', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(850, 43, 'su', 'Kontakta', 'Kontakta', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(851, 43, 'it', 'Contatto', 'Contatto', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(852, 43, 'sk', 'kontakt', 'kontakt', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(853, 43, 'id', 'Kontak', 'Kontak', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(854, 43, 'hi', 'à¤¸à¤‚à¤ªà¤°à¥à¤•', 'à¤¸à¤‚à¤ªà¤°à¥à¤•', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(855, 43, 'ja', 'æŽ¥è§¦', 'æŽ¥è§¦', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(856, 43, 'ko', 'ì ‘ì´‰', 'ì ‘ì´‰', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(857, 43, 'th', 'à¸•à¸´à¸”à¸•à¹ˆà¸­', 'à¸•à¸´à¸”à¸•à¹ˆà¸­', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(858, 43, 'cn', 'è”ç³»', 'è”ç³»', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(859, 43, 'iw', '××™×© ×§×©×¨', '××™×© ×§×©×¨', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(860, 43, 'ar', 'Ø§ØªØµØ§Ù„', 'Ø§ØªØµØ§Ù„', '', '', '', '', '', '', '', '', '', '', 'Contact', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454181961),
(861, 44, 'en', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(862, 44, 'fr', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(863, 44, 'de', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(864, 44, 'es', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(865, 44, 'pl', 'Bloga', 'Bloga', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(866, 44, 'uk', 'Ð‘Ð»Ð¾Ð³', 'Ð‘Ð»Ð¾Ð³', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(867, 44, 'ru', 'Ð‘Ð»Ð¾Ð³', 'Ð‘Ð»Ð¾Ð³', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(868, 44, 'tu', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(869, 44, 'po', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(870, 44, 'su', 'Blogg', 'Blogg', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(871, 44, 'it', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(872, 44, 'sk', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(873, 44, 'id', 'Blog', 'Blog', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(874, 44, 'hi', 'à¤¬à¥à¤²à¥‰à¤—', 'à¤¬à¥à¤²à¥‰à¤—', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(875, 44, 'ja', 'ãƒ–ãƒ­ã‚°', 'ãƒ–ãƒ­ã‚°', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(876, 44, 'ko', 'ë¸”ë¡œê·¸', 'ë¸”ë¡œê·¸', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(877, 44, 'th', 'à¸šà¸¥à¹‡à¸­à¸', 'à¸šà¸¥à¹‡à¸­à¸', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(878, 44, 'cn', 'åšå®¢', 'åšå®¢', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(879, 44, 'iw', '×‘×œ×•×’', '×‘×œ×•×’', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(880, 44, 'ar', 'Ù…Ù‚Ø§Ù„Ø§Øª', 'Ù…Ù‚Ø§Ù„Ø§Øª', '', '', '', '', '', '', '', '', '', '', 'Blog', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191290),
(881, 45, 'en', 'News', 'News', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(882, 45, 'fr', 'News', 'News', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(883, 45, 'de', 'Nachrichten', 'Nachrichten', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(884, 45, 'es', 'Noticias', 'Noticias', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(885, 45, 'pl', 'Nowina', 'Nowina', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(886, 45, 'uk', 'ÐÐ¾Ð²Ð¸Ð½Ð¸', 'ÐÐ¾Ð²Ð¸Ð½Ð¸', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(887, 45, 'ru', 'ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸', 'ÐÐ¾Ð²Ð¾ÑÑ‚Ð¸', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(888, 45, 'tu', 'Haber', 'Haber', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(889, 45, 'po', 'NotÃ­cia', 'NotÃ­cia', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(890, 45, 'su', 'Nyheter', 'Nyheter', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(891, 45, 'it', 'Notizie', 'Notizie', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(892, 45, 'sk', 'SprÃ¡vy', 'SprÃ¡vy', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(893, 45, 'id', 'Berita', 'Berita', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(894, 45, 'hi', 'à¤¸à¤®à¤¾à¤šà¤¾à¤°', 'à¤¸à¤®à¤¾à¤šà¤¾à¤°', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(895, 45, 'ja', 'ãƒ‹ãƒ¥ãƒ¼ã‚¹', 'ãƒ‹ãƒ¥ãƒ¼ã‚¹', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(896, 45, 'ko', 'ë‰´ìŠ¤', 'ë‰´ìŠ¤', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(897, 45, 'th', 'à¸‚à¹ˆà¸²à¸§', 'à¸‚à¹ˆà¸²à¸§', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(898, 45, 'cn', 'æ–°é—»', 'æ–°é—»', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(899, 45, 'iw', '×—Ö²×“Ö¸×©××•Ö¹×ª', '×—Ö²×“Ö¸×©××•Ö¹×ª', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319),
(900, 45, 'ar', 'Ø£Ù†Ø¨Ø§Ø¡', 'Ø£Ù†Ø¨Ø§Ø¡', '', '', '', '', '', '', '', '', '', '', 'News', '', '', 'article', '', '', '', 'app', '', '', '', '', 1454191319);

-- --------------------------------------------------------

--
-- Table structure for table `_m_blog`
--

CREATE TABLE `_m_blog` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `stars` int(11) DEFAULT '0',
  `stars_count` int(11) DEFAULT '0',
  `author_badge` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `partage` int(11) NOT NULL DEFAULT '1',
  `facebook` int(11) DEFAULT '0',
  `id_facebook` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `disqus` int(11) DEFAULT '0',
  `id_disqus` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mailsender` int(11) DEFAULT '0',
  `sendto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `in_rss` int(11) NOT NULL DEFAULT '0',
  `ordre` int(11) NOT NULL,
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `id_modo` int(111) DEFAULT NULL,
  `val_modo` int(11) DEFAULT '0',
  `date_modo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_m_blog_traduction`
--

CREATE TABLE `_m_blog_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL,
  `langue` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `categorie` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `tags` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image_gallery` text COLLATE utf8_spanish_ci,
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_m_blog_version`
--

CREATE TABLE `_m_blog_version` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL DEFAULT '0',
  `pseudo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `langue` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `tags` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image_gallery` text COLLATE utf8_spanish_ci,
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_m_news`
--

CREATE TABLE `_m_news` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `stars` int(11) DEFAULT '0',
  `stars_count` int(11) DEFAULT '0',
  `author_badge` int(11) NOT NULL DEFAULT '0',
  `comments` int(11) NOT NULL DEFAULT '0',
  `partage` int(11) NOT NULL DEFAULT '1',
  `facebook` int(11) DEFAULT '0',
  `id_facebook` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `disqus` int(11) DEFAULT '0',
  `id_disqus` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `mailsender` int(11) DEFAULT '0',
  `sendto` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `in_rss` int(11) NOT NULL DEFAULT '0',
  `ordre` int(11) NOT NULL DEFAULT '0',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_start` int(11) DEFAULT NULL,
  `date_end` int(11) DEFAULT NULL,
  `id_modo` int(111) DEFAULT NULL,
  `val_modo` int(11) DEFAULT '0',
  `date_modo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_m_news_traduction`
--

CREATE TABLE `_m_news_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL DEFAULT '0',
  `langue` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `categorie` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `tags` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image_gallery` text COLLATE utf8_spanish_ci,
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_m_news_version`
--

CREATE TABLE `_m_news_version` (
  `id` int(11) NOT NULL,
  `id_content` int(11) NOT NULL DEFAULT '0',
  `pseudo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `langue` varchar(5) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` int(11) NOT NULL,
  `categorie` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `tags` text COLLATE utf8_spanish_ci,
  `article_tinymce` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `image_gallery` text COLLATE utf8_spanish_ci,
  `meta_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_keys` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_facebook_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_titre` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_image` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `meta_twitter_player` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order`
--

CREATE TABLE `_order` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'shop',
  `transaction_id` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_id` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status_shipping` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'waiting_payment',
  `user_id` int(11) DEFAULT '0',
  `user_groupe` int(11) DEFAULT '0',
  `user_pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_lastname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_firstname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_lastname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_firstname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_company` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_zipcode` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_city` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_region` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_country` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_phone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_lastname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_firstname` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_company` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_address` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_zipcode` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_city` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_region` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_country` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `billing_phone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `vat` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `amount` decimal(7,2) DEFAULT '0.00',
  `amount_real` decimal(7,2) DEFAULT '0.00',
  `amount_billing` decimal(7,2) DEFAULT '0.00',
  `amount_profit` decimal(7,2) DEFAULT '0.00',
  `amount_with_shipping` decimal(7,2) DEFAULT '0.00',
  `amount_vat` decimal(7,2) DEFAULT '0.00',
  `count` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_amount` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `method_billing` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `method_shipping` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `products` text COLLATE utf8_spanish_ci,
  `message` text COLLATE utf8_spanish_ci,
  `history` text COLLATE utf8_spanish_ci,
  `error_log` text COLLATE utf8_spanish_ci,
  `billing_pdf` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_pdf` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_creation_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0',
  `date_modification_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order_message`
--

CREATE TABLE `_order_message` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order_message_traduction`
--

CREATE TABLE `_order_message_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `message` text COLLATE utf8_spanish_ci,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order_status`
--

CREATE TABLE `_order_status` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `can_delete` int(11) NOT NULL DEFAULT '1',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order_status_back`
--

CREATE TABLE `_order_status_back` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `can_delete` int(11) NOT NULL DEFAULT '1',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order_status_back_traduction`
--

CREATE TABLE `_order_status_back_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_order_status_traduction`
--

CREATE TABLE `_order_status_traduction` (
  `id` int(11) NOT NULL,
  `id_content` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_paypal`
--

CREATE TABLE `_paypal` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT '0',
  `user_groupe` int(11) DEFAULT '0',
  `user_pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `successpageredirectrequested` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `timestamp` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correlationid` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ack` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `build` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `insuranceoptionselected` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shippingoptionisdefault` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_transactionid` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_transactiontype` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_paymenttype` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_ordertime` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_amt` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_feeamt` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_taxamt` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_currencycode` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_paymentstatus` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_pendingreason` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_reasoncode` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_protectioneligibility` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_protectioneligibilitytype` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_securemerchantaccountid` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_errorcode` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paymentinfo_0_ack` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_creation_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_modification` int(11) DEFAULT '0',
  `date_modification_human` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_promotion`
--

CREATE TABLE `_promotion` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `userlimit` int(11) DEFAULT '0',
  `usercount` int(11) DEFAULT '0',
  `active` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `priority` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_from` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_to` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_from_hour` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_to_hour` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_from_time` int(11) DEFAULT '0',
  `date_to_time` int(11) DEFAULT '0',
  `reduction_type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `reduction_value` decimal(7,2) DEFAULT '0.00',
  `stockmin` int(11) DEFAULT '0',
  `showprice` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active_all` int(11) DEFAULT '1',
  `categories` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_rubrique`
--

CREATE TABLE `_rubrique` (
  `id` int(11) NOT NULL,
  `name` varchar(220) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ordre` int(11) DEFAULT '0',
  `idModule` int(11) NOT NULL DEFAULT '0',
  `idParent` int(11) DEFAULT '0',
  `showinmenu` int(11) DEFAULT '1',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_rubrique`
--

INSERT INTO `_rubrique` (`id`, `name`, `ordre`, `idModule`, `idParent`, `showinmenu`, `date_creation`) VALUES
(57, 'home', 1, 32, 0, 1, 1453985931),
(68, 'contact', 4, 43, 0, 1, 1454181961),
(69, 'blog', 2, 44, 0, 1, 1454191290),
(70, 'news', 3, 45, 0, 1, 1454191319);

-- --------------------------------------------------------

--
-- Table structure for table `_rubrique_users`
--

CREATE TABLE `_rubrique_users` (
  `id` int(11) NOT NULL,
  `name` varchar(220) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ordre` int(11) DEFAULT '0',
  `idModule` int(11) NOT NULL DEFAULT '0',
  `idParent` int(11) DEFAULT '0',
  `showinmenu` int(11) DEFAULT '1',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_support`
--

CREATE TABLE `_support` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `subject` text COLLATE utf8_spanish_ci,
  `message` text COLLATE utf8_spanish_ci,
  `langue` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `level` int(11) NOT NULL,
  `reference` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `count_messages` int(11) DEFAULT '0',
  `pseudo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `readed_user` int(11) DEFAULT '1',
  `readed_support` int(11) DEFAULT '1',
  `date_creation` int(11) NOT NULL,
  `date_close` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_support_messages`
--

CREATE TABLE `_support_messages` (
  `id` int(11) NOT NULL,
  `id_support` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `id_support_user` int(11) NOT NULL,
  `id_support_groupe` int(11) NOT NULL,
  `is_support_agent` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_taxes`
--

CREATE TABLE `_taxes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `active` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `priority` int(11) DEFAULT '0',
  `percent` decimal(7,2) DEFAULT '0.00',
  `categories` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users`
--

CREATE TABLE `_users` (
  `id` int(11) NOT NULL,
  `login` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `salt` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_users`
--

INSERT INTO `_users` (`id`, `login`, `password`, `token`, `salt`) VALUES
(7, 'esmnmusicanqn@gmail.com', 'OTgzODRiYzQyYTdhYTU1MWU2MDJmZDAyY2UwYjY2ODllOTEzM2JjMjZjMjhhZDRjNDM2Y2QxOWFmOTZhMzNiZQ==', '10b6604f2688911bc9945c53e12c4900', ',2cS))e}ggP_!X>0e8];5CUK)Z0}[W8]c!');

-- --------------------------------------------------------

--
-- Table structure for table `_users_access_token`
--

CREATE TABLE `_users_access_token` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `is_valid` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_users_access_token`
--

INSERT INTO `_users_access_token` (`id`, `id_user`, `token`, `is_valid`, `date_creation`) VALUES
(1, 7, 'H0XZlT44FcN1j9LTdFc5XRXhlF30UaGe1g3cZY6i1K9', 1, 1433626688),
(3, 10, '0MYh6MVVZBa3Ujg5N805CVaiMlQVJObAeZIaCgWfHW8', 1, 1433719051),
(4, 11, 'PWYUgeE9APhCCWYlBTGIWXSaYHT5J67cTWW00eZeT7G', 1, 1433754687),
(5, 12, 'IgPJV7TF4jQ2h5f244QShfFRj6IBjAMRGeefcXL67fZ', 1, 1433869236),
(6, 13, 'YcYfDZ81WZKMW9H3S3BT9PaKER2jhdk6g8cJYbAK0Ya', 1, 1433869416);

-- --------------------------------------------------------

--
-- Table structure for table `_users_activation`
--

CREATE TABLE `_users_activation` (
  `id` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `code` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users_address`
--

CREATE TABLE `_users_address` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `address` text COLLATE utf8_spanish_ci,
  `phone1` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `phone2` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `phone3` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `other_info` text COLLATE utf8_spanish_ci,
  `is_default` int(11) DEFAULT '0',
  `is_billing` int(11) DEFAULT '0',
  `is_shipping` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users_followers`
--

CREATE TABLE `_users_followers` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_user_follow` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users_groupes`
--

CREATE TABLE `_users_groupes` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `liste_widget` text COLLATE utf8_spanish_ci,
  `liste_module` text COLLATE utf8_spanish_ci,
  `liste_module_limit` text COLLATE utf8_spanish_ci,
  `liste_module_list` text COLLATE utf8_spanish_ci,
  `liste_module_show` text COLLATE utf8_spanish_ci,
  `liste_module_add` text COLLATE utf8_spanish_ci,
  `liste_module_edit` text COLLATE utf8_spanish_ci,
  `liste_module_delete` text COLLATE utf8_spanish_ci,
  `liste_module_admin` text COLLATE utf8_spanish_ci,
  `liste_module_modo` text COLLATE utf8_spanish_ci,
  `liste_module_interne` text COLLATE utf8_spanish_ci,
  `liste_module_interne_modo` text COLLATE utf8_spanish_ci,
  `liste_enfant` text COLLATE utf8_spanish_ci,
  `liste_enfant_modo` text COLLATE utf8_spanish_ci,
  `liste_parent` text COLLATE utf8_spanish_ci,
  `can_subscribe` int(11) DEFAULT '1',
  `editor_ckeditor` int(1) DEFAULT '0',
  `editor_tinymce` int(1) DEFAULT '0',
  `fileman` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'none',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `attributes` text COLLATE utf8_spanish_ci,
  `saas_options` text COLLATE utf8_spanish_ci,
  `register_verification` int(11) DEFAULT '1',
  `payment` int(11) DEFAULT '0',
  `payment_currency` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'eur',
  `payment_amount_month` decimal(7,2) DEFAULT '0.00',
  `payment_group_expired` int(11) DEFAULT '0',
  `payment_tranche` int(11) DEFAULT '0',
  `payment_group_upgrade` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_users_groupes`
--

INSERT INTO `_users_groupes` (`id`, `uri`, `liste_widget`, `liste_module`, `liste_module_limit`, `liste_module_list`, `liste_module_show`, `liste_module_add`, `liste_module_edit`, `liste_module_delete`, `liste_module_admin`, `liste_module_modo`, `liste_module_interne`, `liste_module_interne_modo`, `liste_enfant`, `liste_enfant_modo`, `liste_parent`, `can_subscribe`, `editor_ckeditor`, `editor_tinymce`, `fileman`, `groupe_traduction`, `attributes`, `saas_options`, `register_verification`, `payment`, `payment_currency`, `payment_amount_month`, `payment_group_expired`, `payment_tranche`, `payment_group_upgrade`, `date_creation`) VALUES
(11, 'administrator', '###49,46,47,', '#32,#43,#44,#45,', '#32|0,#43|0,', '#44,#45,', '#44,#45,', '#44,#45,', '#32,#43,#44,#45,', '#44,#45,', '#32,#43,#44,#45,', '#32,#43,#44,#45,', 'module,module_page,module_multipage,module_blog,module_news,module_sharedlinks,module_onepage,module_video,module_image,module_faq,module_partner,module_inbox,module_link,widget,module_block,module_survey,module_carousel,module_genform,configuration,siteweb,langue,logo,modules,adresse,network,analytics,sitemap,backups,updater,cache,setup,oauth,smtp,stripe,paypal,transfer,saas_config,check,cash,params,menu,users,groupes,attributes,order,promotion,discountcode,taxes,media,showprofile,myinbox,comment,inbox,moderation,support,stats_dash,stats_order,stats_user,stats_cart,stats_comment,stats_contrib,stats_cloud,stats_tickets,traduction,traduction_modo,themes,emailnotification,campagne_email,api,saas,support_client,', '', '#11,#12,#13,', '#11,#12,#13,', '#11,', 2, 1, 1, 'admin', 'a:20:{s:2:"en";s:3:"282";s:2:"fr";s:3:"283";s:2:"de";s:3:"284";s:2:"es";s:3:"285";s:2:"pl";s:3:"286";s:2:"uk";s:3:"287";s:2:"ru";s:3:"288";s:2:"tu";s:3:"289";s:2:"po";s:3:"290";s:2:"su";s:3:"291";s:2:"it";s:3:"292";s:2:"sk";s:3:"293";s:2:"id";s:3:"294";s:2:"hi";s:3:"295";s:2:"ja";s:3:"296";s:2:"ko";s:3:"297";s:2:"th";s:3:"298";s:2:"cn";s:3:"299";s:2:"iw";s:3:"300";s:2:"ar";s:3:"301";}', 'YToyOntpOjA7czoxOiIxIjtpOjE7czoxOiIyIjt9', 'YTo1OntzOjg6InNhYXNfYWRkIjtiOjE7czoxMToic2Fhc19kZWxldGUiO2I6MTtzOjEwOiJzYWFzX2xpbWl0IjtzOjE6IjAiO3M6MTM6InNhYXNfZGF0ZV9lbmQiO3M6MzoiMTAwIjtzOjEzOiJzYWFzX2NvbnN0YW50IjthOjYxOntzOjE1OiJTQUFTX1RSQURVQ1RJT04iO2I6MTtzOjE0OiJTQUFTX0FUVFJJQlVUUyI7YjoxO3M6MTI6IlNBQVNfR1JPVVBFUyI7YjoxO3M6MTc6IlNBQVNfTk9USUZJQ0FUSU9OIjtiOjE7czoxNToiU0FBU19ORVdTTEVUVEVSIjtiOjE7czoxMDoiU0FBU19NRURJQSI7YjoxO3M6MTA6IlNBQVNfQ0xPVUQiO2I6MTtzOjEwOiJTQUFTX1VTRVJTIjtiOjE7czo5OiJTQUFTX01FTlUiO2I6MTtzOjEwOiJTQUFTX1NUQVRTIjtiOjE7czoxNToiU0FBU19NT0RFUkFUSU9OIjtiOjE7czoxMDoiU0FBU19JTkJPWCI7YjoxO3M6MTI6IlNBQVNfQ09NTUVOVCI7YjoxO3M6MTI6IlNBQVNfU1VQUE9SVCI7YjoxO3M6MTA6IlNBQVNfT1JERVIiO2I6MTtzOjEyOiJTQUFTX01ZSU5CT1giO2I6MTtzOjEwOiJTQUFTX1RIRU1FIjtiOjE7czoxNDoiU0FBU19USEVNRV9BREQiO2I6MTtzOjE1OiJTQUFTX1RIRU1FX0VESVQiO2I6MTtzOjE3OiJTQUFTX1RIRU1FX0RFTEVURSI7YjoxO3M6MTM6IlNBQVNfVEhFTUVfSlMiO2I6MTtzOjEyOiJTQUFTX0FERFJFU1MiO2I6MTtzOjE1OiJTQUFTX1NJWkVfTElNSVQiO2k6MjAwO3M6MTI6IlNBQVNfTU9EVUxFUyI7YjoxO3M6MTc6IlNBQVNfTU9EVUxFU19QQUdFIjtiOjE7czoyMjoiU0FBU19NT0RVTEVTX01VTFRJUEFHRSI7YjoxO3M6MjA6IlNBQVNfTU9EVUxFU19PTkVQQUdFIjtiOjE7czoxNzoiU0FBU19NT0RVTEVTX0JMT0ciO2I6MTtzOjE3OiJTQUFTX01PRFVMRVNfU0hPUCI7YjoxO3M6MTc6IlNBQVNfTU9EVUxFU19ORVdTIjtiOjE7czoyNDoiU0FBU19NT0RVTEVTX1NIQVJFRExJTktTIjtiOjE7czoxODoiU0FBU19NT0RVTEVTX1ZJREVPIjtiOjE7czoxODoiU0FBU19NT0RVTEVTX0lNQUdFIjtiOjE7czoxNjoiU0FBU19NT0RVTEVTX0ZBUSI7YjoxO3M6MjA6IlNBQVNfTU9EVUxFU19QQVJUTkVSIjtiOjE7czoyMDoiU0FBU19NT0RVTEVTX0NPTlRBQ1QiO2I6MTtzOjE3OiJTQUFTX01PRFVMRVNfTElOSyI7YjoxO3M6MjA6IlNBQVNfV0lER0VUX0NBUk9VU0VMIjtiOjE7czoxNzoiU0FBU19XSURHRVRfQkxPQ0siO2I6MTtzOjE2OiJTQUFTX1dJREdFVF9GT1JNIjtiOjE7czoxODoiU0FBU19XSURHRVRfU1VSVkVZIjtiOjE7czoxODoiU0FBU19DT05GSUdVUkFUSU9OIjtiOjE7czoxODoiU0FBU19DT05GSUdfTEFOR1VFIjtiOjE7czoxOToiU0FBU19DT05GSUdfTU9EVUxFUyI7YjoxO3M6MTg6IlNBQVNfQ09ORklHX1BBUkFNUyI7YjoxO3M6MTk6IlNBQVNfQ09ORklHX0JBQ0tVUFMiO2I6MTtzOjE4OiJTQUFTX0NPTkZJR19VUERBVEUiO2I6MTtzOjE2OiJTQUFTX0NPTkZJR19TTVRQIjtiOjE7czoxNzoiU0FBU19DT05GSUdfQ0FDSEUiO2I6MTtzOjE3OiJTQUFTX0NPTkZJR19TRVRVUCI7YjoxO3M6MTg6IlNBQVNfQ09ORklHX09BVVRIMiI7YjoxO3M6MTk6IlNBQVNfQ09ORklHX05FVFdPUksiO2I6MTtzOjE3OiJTQUFTX0NPTkZJR19NRURJQSI7YjoxO3M6MjE6IlNBQVNfQ09ORklHX0FOQUxZVElDUyI7YjoxO3M6MTc6IlNBQVNfQ09ORklHX0NMT1VEIjtiOjE7czoxODoiU0FBU19DT05GSUdfU09DSUFMIjtiOjE7czoxODoiU0FBU19DT05GSUdfU1RSSVBFIjtiOjE7czoxODoiU0FBU19DT05GSUdfUEFZUEFMIjtiOjE7czoyMDoiU0FBU19DT05GSUdfVFJBTlNGRVIiO2I6MTtzOjE3OiJTQUFTX0NPTkZJR19DSEVDSyI7YjoxO3M6MTY6IlNBQVNfQ09ORklHX0NBU0giO2I6MTt9fQ==', 1, 0, '', '0.00', 0, 0, 0, 1434125758),
(12, 'contributor', '', '#44,#45,', '#44|0,#45|0,', '#44,#45,', '#44,#45,', '#44,#45,', '', '', '', '', 'showprofile,myinbox,support_client,', '', '', '', '#11,', 1, 0, 1, 'admin', 'a:20:{s:2:"en";s:3:"302";s:2:"fr";s:3:"303";s:2:"de";s:3:"304";s:2:"es";s:3:"305";s:2:"pl";s:3:"306";s:2:"uk";s:3:"307";s:2:"ru";s:3:"308";s:2:"tu";s:3:"309";s:2:"po";s:3:"310";s:2:"su";s:3:"311";s:2:"it";s:3:"312";s:2:"sk";s:3:"313";s:2:"id";s:3:"314";s:2:"hi";s:3:"315";s:2:"ja";s:3:"316";s:2:"ko";s:3:"317";s:2:"th";s:3:"318";s:2:"cn";s:3:"319";s:2:"iw";s:3:"320";s:2:"ar";s:3:"321";}', 'YTowOnt9', 'YTo1OntzOjg6InNhYXNfYWRkIjtiOjA7czoxMToic2Fhc19kZWxldGUiO2I6MDtzOjEwOiJzYWFzX2xpbWl0IjtzOjA6IiI7czoxMzoic2Fhc19kYXRlX2VuZCI7czowOiIiO3M6MTM6InNhYXNfY29uc3RhbnQiO2E6NjE6e3M6MTU6IlNBQVNfVFJBRFVDVElPTiI7YjoxO3M6MTQ6IlNBQVNfQVRUUklCVVRTIjtiOjA7czoxMjoiU0FBU19HUk9VUEVTIjtiOjA7czoxNzoiU0FBU19OT1RJRklDQVRJT04iO2I6MDtzOjE1OiJTQUFTX05FV1NMRVRURVIiO2I6MDtzOjEwOiJTQUFTX01FRElBIjtiOjA7czoxMDoiU0FBU19DTE9VRCI7YjoxO3M6MTA6IlNBQVNfVVNFUlMiO2I6MTtzOjk6IlNBQVNfTUVOVSI7YjoxO3M6MTA6IlNBQVNfU1RBVFMiO2I6MTtzOjE1OiJTQUFTX01PREVSQVRJT04iO2I6MTtzOjEwOiJTQUFTX0lOQk9YIjtiOjE7czoxMjoiU0FBU19DT01NRU5UIjtiOjE7czoxMjoiU0FBU19TVVBQT1JUIjtiOjE7czoxMDoiU0FBU19PUkRFUiI7YjoxO3M6MTI6IlNBQVNfTVlJTkJPWCI7YjoxO3M6MTA6IlNBQVNfVEhFTUUiO2I6MTtzOjE0OiJTQUFTX1RIRU1FX0FERCI7YjowO3M6MTU6IlNBQVNfVEhFTUVfRURJVCI7YjowO3M6MTc6IlNBQVNfVEhFTUVfREVMRVRFIjtiOjA7czoxMzoiU0FBU19USEVNRV9KUyI7YjowO3M6MTI6IlNBQVNfQUREUkVTUyI7YjowO3M6MTU6IlNBQVNfU0laRV9MSU1JVCI7aToyMDA7czoxMjoiU0FBU19NT0RVTEVTIjtiOjE7czoxNzoiU0FBU19NT0RVTEVTX1BBR0UiO2I6MDtzOjIyOiJTQUFTX01PRFVMRVNfTVVMVElQQUdFIjtiOjA7czoyMDoiU0FBU19NT0RVTEVTX09ORVBBR0UiO2I6MDtzOjE3OiJTQUFTX01PRFVMRVNfQkxPRyI7YjowO3M6MTc6IlNBQVNfTU9EVUxFU19TSE9QIjtiOjA7czoxNzoiU0FBU19NT0RVTEVTX05FV1MiO2I6MDtzOjI0OiJTQUFTX01PRFVMRVNfU0hBUkVETElOS1MiO2I6MDtzOjE4OiJTQUFTX01PRFVMRVNfVklERU8iO2I6MDtzOjE4OiJTQUFTX01PRFVMRVNfSU1BR0UiO2I6MDtzOjE2OiJTQUFTX01PRFVMRVNfRkFRIjtiOjA7czoyMDoiU0FBU19NT0RVTEVTX1BBUlRORVIiO2I6MDtzOjIwOiJTQUFTX01PRFVMRVNfQ09OVEFDVCI7YjowO3M6MTc6IlNBQVNfTU9EVUxFU19MSU5LIjtiOjA7czoyMDoiU0FBU19XSURHRVRfQ0FST1VTRUwiO2I6MDtzOjE3OiJTQUFTX1dJREdFVF9CTE9DSyI7YjowO3M6MTY6IlNBQVNfV0lER0VUX0ZPUk0iO2I6MDtzOjE4OiJTQUFTX1dJREdFVF9TVVJWRVkiO2I6MTtzOjE4OiJTQUFTX0NPTkZJR1VSQVRJT04iO2I6MDtzOjE4OiJTQUFTX0NPTkZJR19MQU5HVUUiO2I6MDtzOjE5OiJTQUFTX0NPTkZJR19NT0RVTEVTIjtiOjA7czoxODoiU0FBU19DT05GSUdfUEFSQU1TIjtiOjA7czoxOToiU0FBU19DT05GSUdfQkFDS1VQUyI7YjowO3M6MTg6IlNBQVNfQ09ORklHX1VQREFURSI7YjowO3M6MTY6IlNBQVNfQ09ORklHX1NNVFAiO2I6MDtzOjE3OiJTQUFTX0NPTkZJR19DQUNIRSI7YjowO3M6MTc6IlNBQVNfQ09ORklHX1NFVFVQIjtiOjA7czoxODoiU0FBU19DT05GSUdfT0FVVEgyIjtiOjA7czoxOToiU0FBU19DT05GSUdfTkVUV09SSyI7YjowO3M6MTc6IlNBQVNfQ09ORklHX01FRElBIjtiOjA7czoyMToiU0FBU19DT05GSUdfQU5BTFlUSUNTIjtiOjA7czoxNzoiU0FBU19DT05GSUdfQ0xPVUQiO2I6MTtzOjE4OiJTQUFTX0NPTkZJR19TT0NJQUwiO2I6MDtzOjE4OiJTQUFTX0NPTkZJR19TVFJJUEUiO2I6MTtzOjE4OiJTQUFTX0NPTkZJR19QQVlQQUwiO2I6MTtzOjIwOiJTQUFTX0NPTkZJR19UUkFOU0ZFUiI7YjoxO3M6MTc6IlNBQVNfQ09ORklHX0NIRUNLIjtiOjE7czoxNjoiU0FBU19DT05GSUdfQ0FTSCI7YjoxO319', 1, 0, 'eur', '9.60', 0, 6, 0, 1439563777),
(13, 'moderator', '', '#44,#45,', '#44|0,#45|0,', '#44,#45,', '#44,#45,', '#44,#45,', '#44,#45,', '#44,#45,', '', '#44,#45,', 'moderation,', '', '', '', '#11,', 2, 0, 0, 'none', 'a:20:{s:2:"en";s:3:"322";s:2:"fr";s:3:"323";s:2:"de";s:3:"324";s:2:"es";s:3:"325";s:2:"pl";s:3:"326";s:2:"uk";s:3:"327";s:2:"ru";s:3:"328";s:2:"tu";s:3:"329";s:2:"po";s:3:"330";s:2:"su";s:3:"331";s:2:"it";s:3:"332";s:2:"sk";s:3:"333";s:2:"id";s:3:"334";s:2:"hi";s:3:"335";s:2:"ja";s:3:"336";s:2:"ko";s:3:"337";s:2:"th";s:3:"338";s:2:"cn";s:3:"339";s:2:"iw";s:3:"340";s:2:"ar";s:3:"341";}', 'YTowOnt9', 'YTo1OntzOjg6InNhYXNfYWRkIjtiOjA7czoxMToic2Fhc19kZWxldGUiO2I6MDtzOjEwOiJzYWFzX2xpbWl0IjtzOjE6IjAiO3M6MTM6InNhYXNfZGF0ZV9lbmQiO3M6MDoiIjtzOjEzOiJzYWFzX2NvbnN0YW50IjthOjYxOntzOjE1OiJTQUFTX1RSQURVQ1RJT04iO2I6MDtzOjE0OiJTQUFTX0FUVFJJQlVUUyI7YjoxO3M6MTI6IlNBQVNfR1JPVVBFUyI7YjoxO3M6MTc6IlNBQVNfTk9USUZJQ0FUSU9OIjtiOjA7czoxNToiU0FBU19ORVdTTEVUVEVSIjtiOjA7czoxMDoiU0FBU19NRURJQSI7YjoxO3M6MTA6IlNBQVNfQ0xPVUQiO2I6MTtzOjEwOiJTQUFTX1VTRVJTIjtiOjE7czo5OiJTQUFTX01FTlUiO2I6MTtzOjEwOiJTQUFTX1NUQVRTIjtiOjE7czoxNToiU0FBU19NT0RFUkFUSU9OIjtiOjE7czoxMDoiU0FBU19JTkJPWCI7YjoxO3M6MTI6IlNBQVNfQ09NTUVOVCI7YjoxO3M6MTI6IlNBQVNfU1VQUE9SVCI7YjoxO3M6MTA6IlNBQVNfT1JERVIiO2I6MTtzOjEyOiJTQUFTX01ZSU5CT1giO2I6MTtzOjEwOiJTQUFTX1RIRU1FIjtiOjE7czoxNDoiU0FBU19USEVNRV9BREQiO2I6MTtzOjE1OiJTQUFTX1RIRU1FX0VESVQiO2I6MTtzOjE3OiJTQUFTX1RIRU1FX0RFTEVURSI7YjoxO3M6MTM6IlNBQVNfVEhFTUVfSlMiO2I6MDtzOjEyOiJTQUFTX0FERFJFU1MiO2I6MTtzOjE1OiJTQUFTX1NJWkVfTElNSVQiO2k6MjAwO3M6MTI6IlNBQVNfTU9EVUxFUyI7YjoxO3M6MTc6IlNBQVNfTU9EVUxFU19QQUdFIjtiOjE7czoyMjoiU0FBU19NT0RVTEVTX01VTFRJUEFHRSI7YjoxO3M6MjA6IlNBQVNfTU9EVUxFU19PTkVQQUdFIjtiOjE7czoxNzoiU0FBU19NT0RVTEVTX0JMT0ciO2I6MTtzOjE3OiJTQUFTX01PRFVMRVNfU0hPUCI7YjoxO3M6MTc6IlNBQVNfTU9EVUxFU19ORVdTIjtiOjE7czoyNDoiU0FBU19NT0RVTEVTX1NIQVJFRExJTktTIjtiOjE7czoxODoiU0FBU19NT0RVTEVTX1ZJREVPIjtiOjE7czoxODoiU0FBU19NT0RVTEVTX0lNQUdFIjtiOjE7czoxNjoiU0FBU19NT0RVTEVTX0ZBUSI7YjoxO3M6MjA6IlNBQVNfTU9EVUxFU19QQVJUTkVSIjtiOjE7czoyMDoiU0FBU19NT0RVTEVTX0NPTlRBQ1QiO2I6MTtzOjE3OiJTQUFTX01PRFVMRVNfTElOSyI7YjoxO3M6MjA6IlNBQVNfV0lER0VUX0NBUk9VU0VMIjtiOjE7czoxNzoiU0FBU19XSURHRVRfQkxPQ0siO2I6MTtzOjE2OiJTQUFTX1dJREdFVF9GT1JNIjtiOjE7czoxODoiU0FBU19XSURHRVRfU1VSVkVZIjtiOjE7czoxODoiU0FBU19DT05GSUdVUkFUSU9OIjtiOjE7czoxODoiU0FBU19DT05GSUdfTEFOR1VFIjtiOjE7czoxOToiU0FBU19DT05GSUdfTU9EVUxFUyI7YjowO3M6MTg6IlNBQVNfQ09ORklHX1BBUkFNUyI7YjowO3M6MTk6IlNBQVNfQ09ORklHX0JBQ0tVUFMiO2I6MDtzOjE4OiJTQUFTX0NPTkZJR19VUERBVEUiO2I6MDtzOjE2OiJTQUFTX0NPTkZJR19TTVRQIjtiOjE7czoxNzoiU0FBU19DT05GSUdfQ0FDSEUiO2I6MTtzOjE3OiJTQUFTX0NPTkZJR19TRVRVUCI7YjoxO3M6MTg6IlNBQVNfQ09ORklHX09BVVRIMiI7YjoxO3M6MTk6IlNBQVNfQ09ORklHX05FVFdPUksiO2I6MTtzOjE3OiJTQUFTX0NPTkZJR19NRURJQSI7YjoxO3M6MjE6IlNBQVNfQ09ORklHX0FOQUxZVElDUyI7YjoxO3M6MTc6IlNBQVNfQ09ORklHX0NMT1VEIjtiOjE7czoxODoiU0FBU19DT05GSUdfU09DSUFMIjtiOjE7czoxODoiU0FBU19DT05GSUdfU1RSSVBFIjtiOjE7czoxODoiU0FBU19DT05GSUdfUEFZUEFMIjtiOjE7czoyMDoiU0FBU19DT05GSUdfVFJBTlNGRVIiO2I6MTtzOjE3OiJTQUFTX0NPTkZJR19DSEVDSyI7YjoxO3M6MTY6IlNBQVNfQ09ORklHX0NBU0giO2I6MTt9fQ==', 1, 0, 'eur', '0.00', 0, 0, 0, 1439563872);

-- --------------------------------------------------------

--
-- Table structure for table `_users_groupes_attributes`
--

CREATE TABLE `_users_groupes_attributes` (
  `id` int(11) NOT NULL,
  `active` int(11) DEFAULT '0',
  `required` int(11) DEFAULT '2',
  `groupe_traduction` text COLLATE utf8_spanish_ci,
  `uri` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `type` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `params` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users_groupes_attributes_traduction`
--

CREATE TABLE `_users_groupes_attributes_traduction` (
  `id` int(11) NOT NULL,
  `id_attribute` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users_groupes_attributes_values`
--

CREATE TABLE `_users_groupes_attributes_values` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_attribute` int(11) NOT NULL,
  `value` text COLLATE utf8_spanish_ci NOT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_users_groupes_attributes_values`
--

INSERT INTO `_users_groupes_attributes_values` (`id`, `id_user`, `id_attribute`, `value`, `date_creation`, `date_modification`) VALUES
(1, 7, 1, '1', 1439918691, 1454251251),
(2, 7, 2, '', 1454173022, 1454251251);

-- --------------------------------------------------------

--
-- Table structure for table `_users_groupes_traduction`
--

CREATE TABLE `_users_groupes_traduction` (
  `id` int(11) NOT NULL,
  `id_groupe` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_users_groupes_traduction`
--

INSERT INTO `_users_groupes_traduction` (`id`, `id_groupe`, `langue`, `title`, `description`) VALUES
(282, 11, 'en', 'Administrator', 'Administrator'),
(283, 11, 'fr', 'Administateur', 'Admin du site web'),
(284, 11, 'de', 'Administrator', 'Administrator'),
(285, 11, 'es', 'Administrador', 'Administrador'),
(286, 11, 'pl', 'Administator', 'Admin of the site web'),
(287, 11, 'uk', 'ÐÐ´Ð¼Ñ–Ð½Ñ–ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€', 'ÐÐ´Ð¼Ñ–Ð½Ñ–ÑÑ‚Ñ€Ð°Ñ‚Ð¾Ñ€'),
(288, 11, 'ru', 'Administator', 'Admin of the site web'),
(289, 11, 'tu', 'YÃ¶netici', 'YÃ¶netici'),
(290, 11, 'po', 'Administrador', 'Administrador'),
(291, 11, 'su', 'AdministratÃ¶r', 'AdministratÃ¶r'),
(292, 11, 'it', 'Amministratore', 'Amministratore'),
(293, 11, 'sk', 'SprÃ¡vca', 'SprÃ¡vca'),
(294, 11, 'id', 'Administrator', 'Administrator'),
(295, 11, 'hi', 'à¤ªà¥à¤°à¤¶à¤¾à¤¸à¤•', 'à¤ªà¥à¤°à¤¶à¤¾à¤¸à¤•'),
(296, 11, 'ja', 'ç®¡ç†è€…', 'ç®¡ç†è€…'),
(297, 11, 'ko', 'ê´€ë¦¬ìž', 'ê´€ë¦¬ìž'),
(298, 11, 'th', 'à¸œà¸¹à¹‰à¸šà¸£à¸´à¸«à¸²à¸£', 'à¸œà¸¹à¹‰à¸šà¸£à¸´à¸«à¸²à¸£'),
(299, 11, 'cn', 'ç®¡ç†å‘˜', 'ç®¡ç†å‘˜'),
(300, 11, 'iw', '×ž× ×”×œ', '×ž× ×”×œ'),
(301, 11, 'ar', 'Ù…Ø¯ÙŠØ±', 'Ù…Ø¯ÙŠØ±'),
(302, 12, 'en', 'Contributor', 'Contributor'),
(303, 12, 'fr', 'Contributeur', 'Contributor'),
(304, 12, 'de', 'BeitrÃ¤ger', 'Contributor'),
(305, 12, 'es', 'Contribuyente', 'Contribuyente'),
(306, 12, 'pl', 'WkÅ‚adca', 'WkÅ‚adca'),
(307, 12, 'uk', 'ÑƒÑ‡Ð°ÑÐ½Ð¸Ðº', 'ÑƒÑ‡Ð°ÑÐ½Ð¸Ðº'),
(308, 12, 'ru', 'ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸Ðº', 'ÑƒÑ‡Ð°ÑÑ‚Ð½Ð¸Ðº'),
(309, 12, 'tu', 'iÅŸtirakÃ§i', 'iÅŸtirakÃ§i'),
(310, 12, 'po', 'Contribuidor', 'Contribuidor'),
(311, 12, 'su', 'Bidragsgivare', 'Bidragsgivare'),
(312, 12, 'it', 'Collaboratore', 'Collaboratore'),
(313, 12, 'sk', 'PrispievateÄ¾', 'PrispievateÄ¾'),
(314, 12, 'id', 'Penyumbang', 'Penyumbang'),
(315, 12, 'hi', 'à¤¯à¥‹à¤—à¤¦à¤¾à¤¨à¤•à¤°à¥à¤¤à¤¾', 'à¤¯à¥‹à¤—à¤¦à¤¾à¤¨à¤•à¤°à¥à¤¤à¤¾'),
(316, 12, 'ja', 'æŠ•ç¨¿è€…', 'æŠ•ç¨¿è€…'),
(317, 12, 'ko', 'ê¸°ë¶€ìž', 'ê¸°ë¶€ìž'),
(318, 12, 'th', 'à¸œà¸¹à¹‰à¸ªà¸™à¸±à¸šà¸ªà¸™à¸¸à¸™', 'à¸œà¸¹à¹‰à¸ªà¸™à¸±à¸šà¸ªà¸™à¸¸à¸™'),
(319, 12, 'cn', 'è´¡çŒ®è€…', 'è´¡çŒ®è€…'),
(320, 12, 'iw', '×ž×©×ª×ª×£', '×ž×©×ª×ª×£'),
(321, 12, 'ar', 'Ù…Ø³Ø§Ù‡Ù…', 'Ù…Ø³Ø§Ù‡Ù…'),
(322, 13, 'en', 'Moderator', 'Moderator '),
(323, 13, 'fr', 'Moderateur', 'Moderateur'),
(324, 13, 'de', 'Moderator', 'Moderator '),
(325, 13, 'es', 'Moderador', 'Moderador'),
(326, 13, 'pl', 'Moderator', 'Moderator '),
(327, 13, 'uk', 'ÑÐ¿Ð¾Ð²Ñ–Ð»ÑŒÐ½ÑŽÐ²Ð°Ñ‡', 'ÑÐ¿Ð¾Ð²Ñ–Ð»ÑŒÐ½ÑŽÐ²Ð°Ñ‡ '),
(328, 13, 'ru', 'Moderator', 'Moderator '),
(329, 13, 'tu', 'Arabulucu', 'Arabulucu'),
(330, 13, 'po', 'Mediador', 'Mediador '),
(331, 13, 'su', 'Moderator', 'Moderator '),
(332, 13, 'it', 'Moderatore', 'Moderatore '),
(333, 13, 'sk', 'ModerÃ¡tor', 'ModerÃ¡tor'),
(334, 13, 'id', 'Moderator', 'Moderator '),
(335, 13, 'hi', 'à¤®à¤§à¥à¤¯à¤¸à¥à¤¥', 'à¤®à¤§à¥à¤¯à¤¸à¥à¤¥ '),
(336, 13, 'ja', 'ãƒ¢ãƒ‡ãƒ¬ãƒ¼ã‚¿', 'ãƒ¢ãƒ‡ãƒ¬ãƒ¼ã‚¿'),
(337, 13, 'ko', 'ì‚¬íšŒìž', 'ì‚¬íšŒìž'),
(338, 13, 'th', 'à¸œà¸¹à¹‰à¸”à¸³à¹€à¸™à¸´à¸™à¸£à¸²à¸¢à¸à¸²à¸£', 'à¸œà¸¹à¹‰à¸”à¸³à¹€à¸™à¸´à¸™à¸£à¸²à¸¢à¸à¸²à¸£ '),
(339, 13, 'cn', 'ä¸»å¸­', 'ä¸»å¸­ '),
(340, 13, 'iw', '×ž× ×—×”', '×ž× ×—×”'),
(341, 13, 'ar', 'ÙˆØ³ÙŠØ·', 'ÙˆØ³ÙŠØ·');

-- --------------------------------------------------------

--
-- Table structure for table `_users_inbox`
--

CREATE TABLE `_users_inbox` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_user_sent` int(11) DEFAULT '0',
  `pseudo_user` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pseudo_user_sent` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_delete` int(1) DEFAULT '0',
  `user_sent_delete` int(1) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `message` text COLLATE utf8_spanish_ci,
  `readed` int(1) DEFAULT '0',
  `date_readed` int(11) DEFAULT '0',
  `date_deleted` int(11) DEFAULT '0',
  `date_sent_deleted` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_users_info`
--

CREATE TABLE `_users_info` (
  `id` int(11) NOT NULL,
  `profile_type` int(11) DEFAULT '1',
  `active` int(11) DEFAULT '0',
  `id_user` int(11) DEFAULT '0',
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `network` int(11) DEFAULT '0',
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pseudo` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `region` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `zipcode` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `adresse` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_fix` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_mobil` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_fax` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_facebook` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_twitter` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_google` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_linkedin` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_pinterest` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_myspace` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_youtube` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `notification_mail` int(1) DEFAULT '1',
  `notification_newsletter` int(1) DEFAULT '1',
  `birthday` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` text COLLATE utf8_spanish_ci,
  `website` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `horaire` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'Europe/London',
  `editor_html` varchar(50) COLLATE utf8_spanish_ci DEFAULT 'editor_tinymce',
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_users_info`
--

INSERT INTO `_users_info` (`id`, `profile_type`, `active`, `id_user`, `langue`, `company`, `network`, `email`, `pseudo`, `last_name`, `first_name`, `country`, `region`, `city`, `zipcode`, `adresse`, `tel_fix`, `tel_mobil`, `tel_fax`, `id_facebook`, `id_twitter`, `id_google`, `id_linkedin`, `id_pinterest`, `id_myspace`, `id_youtube`, `notification_mail`, `notification_newsletter`, `birthday`, `gender`, `avatar`, `description`, `website`, `horaire`, `editor_html`, `date_creation`, `date_modification`) VALUES
(7, 1, 2, 7, 'es', '', 11, 'esmnmusicanqn@gmail.com', 'doorgets', 'R&#39;Quiba', 'Mounir', 'AF', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 1, 1, '', '', '1454113056-doorgets56ac0120e14d5-user.png', '', '', 'Europe/Paris', 'editor_tinymce', 1455507393, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_users_notification`
--

CREATE TABLE `_users_notification` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_groupe` int(11) NOT NULL,
  `id_session` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ip_session` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_page` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_referer` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_users_notification`
--

INSERT INTO `_users_notification` (`id`, `id_user`, `id_groupe`, `id_session`, `ip_session`, `url_page`, `url_referer`, `date`) VALUES
(1, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/', 'http://localhost:8888/dg-user/en/?controller=configuration&action=oauth', 1453998563),
(2, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=users', 'http://localhost:8888/dg-user/en/?controller=moduleimage&uri=image&lg=en&action=edit&id=4999', 1453998568),
(3, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=users&action=edit&id=7', 'http://localhost:8888/dg-user/en/?controller=users', 1453998571),
(4, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_56aab000181b3_1454026752.zip', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_56aab000181b3_1454026752.zip', 1454026980),
(5, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F', 1454028434),
(6, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_56aaba00ec5ac_1454029312.zip', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_56aaba00ec5ac_1454029312.zip', 1454029571),
(7, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Doauth', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Doauth', 1454076630),
(8, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454078501),
(9, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification', 1454100318),
(10, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification', 1454109674),
(11, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification', 1454109940),
(12, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification', 1454110922),
(13, 28, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification&action=register', 1454112220),
(14, 28, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', '', 1454112244),
(15, 29, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification&action=register', 1454112415),
(16, 29, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454112425),
(17, 28, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', '', 1454112450),
(18, 28, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', '', 1454112477),
(19, 7, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454112953),
(20, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification', 1454113106),
(22, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', '', 1454113329),
(23, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454113343),
(25, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fu%2Fmooioi%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fu%2Fmooioi%2Ft%2Ffr', 1454113378),
(26, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', '', 1454113392),
(28, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454113517),
(31, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454113583),
(33, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454113918),
(34, 33, 12, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification&action=register', 1454116369),
(35, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fu%2Fsqdqsdqs%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fu%2Fsqdqsdqs%2Ft%2Ffr', 1454117257),
(36, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&error-login=true&back=%2Fdg-user%2Ffr%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_56ac119b0d339_1454117275.zip', 'http://localhost:8888/dg-user/fr/?controller=authentification&error-login=true&back=%2Fdg-user%2Ffr%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_56ac119b0d339_1454117275.zip', 1454118772),
(38, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fu%2Fmarrakech%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fu%2Fmarrakech%2Ft%2Ffr', 1454165387),
(40, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454170668),
(41, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454180088),
(42, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', '', 1454180673),
(43, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', '', 1454180716),
(44, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454180767),
(45, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Fen', 'http://localhost:8888/dg-user/en/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Fen', 1454186752),
(46, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Fen%2F%3Fnews', 'http://localhost:8888/dg-user/en/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Fen%2F%3Fnews', 1454198358),
(47, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dsaas', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dsaas', 1454271496),
(48, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F', 1454327508),
(49, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dgroupes', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dgroupes', 1454327901),
(50, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 1454344457),
(51, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Fen%2F%3Fnews', 'http://localhost:8888/dg-user/en/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Fen%2F%3Fnews', 1454344591),
(52, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Dcreate', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Dcreate', 1454362865),
(53, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 'http://localhost:8888/dg-user/fr/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Ft%2Ffr', 1454423358),
(54, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 1454424750),
(55, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification', 'http://localhost:8888/dg-user/en/?controller=authentification', 1454426852),
(56, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dtraductions', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dtraductions', 1454427362),
(57, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 1454450079),
(58, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F', 1454455591),
(59, 7, 11, '52e3a6cdbf42da2441b42cf3a47cecc2', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dusers', 'http://localhost:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dusers', 1454461436),
(60, 7, 11, 'fa0a6b196150565b0147a2ac1c81d738', '127.0.0.1', '/dg-user/?controller=authentification&back=http%3A%2F%2Fdoorgets.prod%3A8888%2F', 'http://doorgets.prod:8888/dg-user/?controller=authentification&back=http%3A%2F%2Fdoorgets.prod%3A8888%2F', 1464873119),
(61, 7, 11, 'fa0a6b196150565b0147a2ac1c81d738', '127.0.0.1', '/dg-user/?controller=authentification&back=http%3A%2F%2Fdoorgets.prod%3A8888%2F%2F%3Fcontact', 'http://doorgets.prod:8888/dg-user/?controller=authentification&back=http%3A%2F%2Fdoorgets.prod%3A8888%2F%2F%3Fcontact', 1464874188),
(62, 7, 11, 'fa0a6b196150565b0147a2ac1c81d738', '127.0.0.1', '/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 'http://doorgets.prod:8888/dg-user/en/?controller=authentification&error-login=true&back=%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration', 1464874507),
(63, 7, 11, 'med7sulod0vh70kc3050i8scl6', '127.0.0.1', '/fnl/dg-user/?controller=authentification&back=http%3A%2F%2Flocalhost%2Ffnl%2F', 'http://localhost/fnl/dg-user/?controller=authentification&back=http%3A%2F%2Flocalhost%2Ffnl%2F', 1487171458),
(64, 7, 11, 'med7sulod0vh70kc3050i8scl6', '127.0.0.1', '/fnl/dg-user/en/?controller=authentification&error-login=true&back=%2Ffnl%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_58a46f8ce1c49_1487171468.zip', 'http://localhost/fnl/dg-user/en/?controller=authentification&error-login=true&back=%2Ffnl%2Fdg-user%2Fen%2F%3Fcontroller%3Dconfiguration%26action%3Dsetup%26do%3Ddelete%26file%3DdoorGets_CMS_7.0_58a46f8ce1c49_1487171468.zip', 1487172536),
(65, 7, 11, 'med7sulod0vh70kc3050i8scl6', '127.0.0.1', '/fnl/dg-user/?controller=authentification&error-login=true&back=%2Ffnl%2Fdg-user%2F', 'http://localhost/fnl/dg-user/?controller=authentification&error-login=true&back=%2Ffnl%2Fdg-user%2F', 1487173191),
(66, 7, 11, 'd8eb9552fcdbc5d399d205753d4e39b9', '127.0.0.1', '/v1/dg-user/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fv1%2F', 'http://localhost:8888/v1/dg-user/?controller=authentification&back=http%3A%2F%2Flocalhost%3A8888%2Fv1%2F', 1489145410),
(67, 7, 11, 'rp18aai7f6f0c5m9588prji6u0', '::1', '/checkkk/dg-user/?controller=authentification&back=http%3A%2F%2Flocalhost%2Fcheckkk%2F', 'http://localhost/checkkk/dg-user/?controller=authentification&back=http%3A%2F%2Flocalhost%2Fcheckkk%2F', 1489584703);

-- --------------------------------------------------------

--
-- Table structure for table `_users_track`
--

CREATE TABLE `_users_track` (
  `id` int(11) NOT NULL,
  `id_session` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_groupe` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `id_content` text COLLATE utf8_spanish_ci NOT NULL,
  `action` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ip_user` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `url_page` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `url_referer` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_user_facebook`
--

CREATE TABLE `_user_facebook` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_facebook` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `middle_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `birthday` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_user_google`
--

CREATE TABLE `_user_google` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_google` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `verified_email` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `given_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `family_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `picture` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `access_token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `refresh_token` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_data` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_user_stripe`
--

CREATE TABLE `_user_stripe` (
  `id` int(11) NOT NULL,
  `id_stripe` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_user` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_user_stripe_charge`
--

CREATE TABLE `_user_stripe_charge` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `id_stripe` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_charge` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_order` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `amount` int(11) DEFAULT '0',
  `currency` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `data` text COLLATE utf8_spanish_ci,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_user_stripe_order`
--

CREATE TABLE `_user_stripe_order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT '0',
  `vat` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_user_stripe_order_items`
--

CREATE TABLE `_user_stripe_order_items` (
  `id` int(11) NOT NULL,
  `id_order` int(11) DEFAULT '0',
  `type_order` int(11) DEFAULT '0',
  `uri_module` varchar(255) COLLATE utf8_spanish_ci DEFAULT '',
  `id_content` int(11) DEFAULT '0',
  `real_amount` int(11) DEFAULT '0',
  `title` int(11) DEFAULT '0',
  `total_amount` int(11) DEFAULT '0',
  `quantity` int(11) DEFAULT '0',
  `discount` int(11) DEFAULT '0',
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `_website`
--

CREATE TABLE `_website` (
  `id` int(11) NOT NULL,
  `statut` int(11) DEFAULT '1',
  `statut_version` int(11) DEFAULT '0',
  `statut_ip` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `version_doorgets` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `title` varchar(220) COLLATE utf8_spanish_ci NOT NULL,
  `slogan` varchar(180) COLLATE utf8_spanish_ci DEFAULT NULL,
  `copyright` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `year` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(220) COLLATE utf8_spanish_ci NOT NULL,
  `keywords` varchar(220) COLLATE utf8_spanish_ci NOT NULL,
  `email` text COLLATE utf8_spanish_ci,
  `addresses` text COLLATE utf8_spanish_ci,
  `pays` varchar(180) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ville` varchar(180) COLLATE utf8_spanish_ci DEFAULT NULL,
  `adresse` varchar(220) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codepostal` varchar(25) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_fix` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_mobil` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tel_fax` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `facebook` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `twitter` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pinterest` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `myspace` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `youtube` varchar(120) COLLATE utf8_spanish_ci DEFAULT NULL,
  `google` varchar(250) COLLATE utf8_spanish_ci DEFAULT NULL,
  `analytics` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `gmaps` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sharethis` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'fr',
  `langue_front` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'fr',
  `langue_groupe` text COLLATE utf8_spanish_ci,
  `horaire` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'Europe/Paris',
  `mentions` int(11) DEFAULT '1',
  `cgu` int(11) DEFAULT '1',
  `m_newsletter` int(1) DEFAULT '1',
  `m_comment` int(11) DEFAULT '1',
  `m_comment_facebook` int(11) DEFAULT '0',
  `m_comment_disqus` int(11) DEFAULT '0',
  `m_sharethis` int(11) DEFAULT '1',
  `m_sitemap` int(11) DEFAULT '1',
  `m_rss` int(11) DEFAULT '1',
  `id_facebook` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_disqus` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `theme` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'doorgets',
  `theme_bootstrap` varchar(255) COLLATE utf8_spanish_ci NOT NULL DEFAULT 'bootstrap',
  `module_homepage` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oauth_google_id` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oauth_google_secret` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oauth_google_active` int(11) DEFAULT '0',
  `oauth_facebook_id` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oauth_facebook_secret` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `oauth_facebook_active` int(11) DEFAULT '0',
  `smtp_mandrill_ssl` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `smtp_mandrill_active` int(11) DEFAULT '0',
  `smtp_mandrill_host` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `smtp_mandrill_port` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `smtp_mandrill_username` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `smtp_mandrill_password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `stripe_active` int(11) DEFAULT '0',
  `stripe_secret_key` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `stripe_publishable_key` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paypal_demo` int(11) DEFAULT '1',
  `paypal_active` int(11) DEFAULT '0',
  `paypal_user` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paypal_password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paypal_signature` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paypal_returnurl` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `paypal_cancelurl` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `transfer_active` int(11) DEFAULT '0',
  `transfer_tinymce` text COLLATE utf8_spanish_ci,
  `check_active` int(11) DEFAULT '0',
  `check_tinymce` text COLLATE utf8_spanish_ci,
  `cash_active` int(11) DEFAULT '0',
  `cash_tinymce` text COLLATE utf8_spanish_ci,
  `currency` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'eur',
  `saas_host` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `saas_host_int` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `saas_name` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `saas_user` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `saas_password` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `saas_archive` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `saas_position` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `date_creation` int(11) NOT NULL,
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_website`
--

INSERT INTO `_website` (`id`, `statut`, `statut_version`, `statut_ip`, `version_doorgets`, `title`, `slogan`, `copyright`, `year`, `description`, `keywords`, `email`, `addresses`, `pays`, `ville`, `adresse`, `codepostal`, `tel_fix`, `tel_mobil`, `tel_fax`, `facebook`, `twitter`, `pinterest`, `myspace`, `linkedin`, `youtube`, `google`, `analytics`, `gmaps`, `sharethis`, `langue`, `langue_front`, `langue_groupe`, `horaire`, `mentions`, `cgu`, `m_newsletter`, `m_comment`, `m_comment_facebook`, `m_comment_disqus`, `m_sharethis`, `m_sitemap`, `m_rss`, `id_facebook`, `id_disqus`, `theme`, `theme_bootstrap`, `module_homepage`, `oauth_google_id`, `oauth_google_secret`, `oauth_google_active`, `oauth_facebook_id`, `oauth_facebook_secret`, `oauth_facebook_active`, `smtp_mandrill_ssl`, `smtp_mandrill_active`, `smtp_mandrill_host`, `smtp_mandrill_port`, `smtp_mandrill_username`, `smtp_mandrill_password`, `stripe_active`, `stripe_secret_key`, `stripe_publishable_key`, `paypal_demo`, `paypal_active`, `paypal_user`, `paypal_password`, `paypal_signature`, `paypal_returnurl`, `paypal_cancelurl`, `transfer_active`, `transfer_tinymce`, `check_active`, `check_tinymce`, `cash_active`, `cash_tinymce`, `currency`, `saas_host`, `saas_host_int`, `saas_name`, `saas_user`, `saas_password`, `saas_archive`, `saas_position`, `date_creation`, `date_modification`) VALUES
(1, 1, 0, '', '7.0', '', '', '', '', '', '', 'esmnmusicanqn@gmail.com', 'a:1:{i:0;a:10:{s:10:"id_address";s:1:"0";s:5:"title";s:8:"doorGets";s:7:"country";s:6:"France";s:6:"region";s:13:"Ile de france";s:4:"city";s:5:"Paris";s:7:"zipcode";s:5:"75008";s:7:"address";s:21:"10 rue de PentihÃ¨vre";s:5:"phone";s:10:"0123456789";s:5:"email";s:17:"email@exemple.com";s:3:"url";s:58:"10 rue de PentihÃ¨vre, 75008, Paris, Ile de france, France";}}', 'france', 'paris', '40 rue de bercy', '75012', '', '', '', 'doorgets', 'doorgets', '', '', '', '', '', '', '', 'd29faeb3-5ce2-4616-a7ea-0c87ac3bbf84', 'es', 'es', 'a:1:{s:2:"es";s:2:"es";}', 'America/Argentina/Buenos_Aires', 1, 1, 0, 1, 1, 1, 1, 1, 1, 'doorgets', 'doorgets', 'doorgets', 'paper', 'home', '', '', 0, '', '', 0, '0', 0, '', '', '', '', 0, '', 'pk_test_CXBgrLEoZDB0H8mMwhDy8P6M', 0, 0, '', '', '', '', '', 0, '', 0, '', 0, '', 'eur', 'localhost', '', '', 'root', 'root', './installer/doorGets_CMS_7.0_56b0bd5a688b3_1454423386.zip', 'cloud/', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_website_traduction`
--

CREATE TABLE `_website_traduction` (
  `id` int(11) NOT NULL,
  `langue` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `currency` varchar(255) COLLATE utf8_spanish_ci DEFAULT 'eur',
  `statut_tinymce` text COLLATE utf8_spanish_ci,
  `cgu_tinymce` text COLLATE utf8_spanish_ci,
  `terms_tinymce` text COLLATE utf8_spanish_ci,
  `privacy_tinymce` text COLLATE utf8_spanish_ci,
  `yearly_charge` decimal(7,2) DEFAULT '0.00',
  `dev_mode` int(11) DEFAULT '0',
  `title` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `copyright` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `year` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `signature_tinymce` text COLLATE utf8_spanish_ci,
  `shipping_free_active` int(11) DEFAULT '0',
  `shipping_slow_active` int(11) DEFAULT '0',
  `shipping_fast_active` int(11) DEFAULT '0',
  `shipping_free_info` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_slow_info` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_fast_info` varchar(255) COLLATE utf8_spanish_ci DEFAULT NULL,
  `shipping_slow_amount` decimal(7,2) DEFAULT '0.00',
  `shipping_fast_amount` decimal(7,2) DEFAULT '0.00',
  `store_vat` decimal(7,2) DEFAULT '0.00',
  `date_modification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `_website_traduction`
--

INSERT INTO `_website_traduction` (`id`, `langue`, `currency`, `statut_tinymce`, `cgu_tinymce`, `terms_tinymce`, `privacy_tinymce`, `yearly_charge`, `dev_mode`, `title`, `slogan`, `description`, `copyright`, `year`, `keywords`, `signature_tinymce`, `shipping_free_active`, `shipping_slow_active`, `shipping_fast_active`, `shipping_free_info`, `shipping_slow_info`, `shipping_fast_info`, `shipping_slow_amount`, `shipping_fast_amount`, `store_vat`, `date_modification`) VALUES
(238, '', 'gbp', '', '', '', '', '0.00', 0, 'doorGets', 'doorGets CMS - OpenSource', 'Free PHP solution for creating professional or personal website', 'doorGets', '2014', 'cms php, cms open source, doorgets, doorgets cms', '&lt;div style=&quot;text-align:center;&quot;&gt;Powered with&nbsp;&lt;a href=&quot;http://www.doorgets.com&quot; target=&quot;_blank&quot; title=&quot;doorGets CMS&quot;&gt;doorGets&lt;/a&gt;&lt;/div&gt;', 1, 1, 1, '', '', '', '20.00', '35.00', '0.00', 1395079186),
(319, 'en', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(320, 'fr', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(321, 'de', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(322, 'es', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(323, 'pl', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(324, 'uk', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(325, 'ru', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(326, 'tu', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(327, 'po', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(328, 'su', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(329, 'it', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(330, 'sk', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(331, 'id', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(332, 'hi', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(333, 'ja', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(334, 'ko', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(335, 'th', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(336, 'cn', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(337, 'iw', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266),
(338, 'ar', 'eur', NULL, NULL, NULL, NULL, '0.00', 0, 'ESMN', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Escuela Superior de MÃºsica del NeuquÃ©n', 'Elias-Inostroza-Zamora', '2018', 'Escuela, MÃºsica,NeuquÃ©n,Concierto,Evento,Noticias', NULL, 0, 0, 0, NULL, NULL, NULL, '0.00', '0.00', '0.00', 1541635266);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `_cart`
--
ALTER TABLE `_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_categories`
--
ALTER TABLE `_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_categories_traduction`
--
ALTER TABLE `_categories_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_block`
--
ALTER TABLE `_dg_block`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_block_traduction`
--
ALTER TABLE `_dg_block_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_carousel`
--
ALTER TABLE `_dg_carousel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_carousel_traduction`
--
ALTER TABLE `_dg_carousel_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_cart`
--
ALTER TABLE `_dg_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_comments`
--
ALTER TABLE `_dg_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_download`
--
ALTER TABLE `_dg_download`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_email_notification`
--
ALTER TABLE `_dg_email_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_email_notification_traduction`
--
ALTER TABLE `_dg_email_notification_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_email_notification_version`
--
ALTER TABLE `_dg_email_notification_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_files`
--
ALTER TABLE `_dg_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_files_traduction`
--
ALTER TABLE `_dg_files_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_firewall`
--
ALTER TABLE `_dg_firewall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_inbox`
--
ALTER TABLE `_dg_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_links`
--
ALTER TABLE `_dg_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_newsletter`
--
ALTER TABLE `_dg_newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_newsletter_emailling_campagne`
--
ALTER TABLE `_dg_newsletter_emailling_campagne`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_newsletter_emailling_groupe`
--
ALTER TABLE `_dg_newsletter_emailling_groupe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_newsletter_emailling_models`
--
ALTER TABLE `_dg_newsletter_emailling_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_onepage`
--
ALTER TABLE `_dg_onepage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_onepage_traduction`
--
ALTER TABLE `_dg_onepage_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_onepage_version`
--
ALTER TABLE `_dg_onepage_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_page`
--
ALTER TABLE `_dg_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_page_traduction`
--
ALTER TABLE `_dg_page_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_page_version`
--
ALTER TABLE `_dg_page_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_saas`
--
ALTER TABLE `_dg_saas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_stars`
--
ALTER TABLE `_dg_stars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_survey`
--
ALTER TABLE `_dg_survey`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_survey_response`
--
ALTER TABLE `_dg_survey_response`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_survey_traduction`
--
ALTER TABLE `_dg_survey_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_translator`
--
ALTER TABLE `_dg_translator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_translator_traduction`
--
ALTER TABLE `_dg_translator_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_dg_translator_version`
--
ALTER TABLE `_dg_translator_version`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_discountcode`
--
ALTER TABLE `_discountcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_moderation`
--
ALTER TABLE `_moderation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_modules`
--
ALTER TABLE `_modules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_modules_attributes`
--
ALTER TABLE `_modules_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_modules_attributes_traduction`
--
ALTER TABLE `_modules_attributes_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_modules_attributes_values`
--
ALTER TABLE `_modules_attributes_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_modules_traduction`
--
ALTER TABLE `_modules_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_m_blog`
--
ALTER TABLE `_m_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pseudo` (`pseudo`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `active` (`active`),
  ADD KEY `ordre` (`ordre`);

--
-- Indexes for table `_m_blog_traduction`
--
ALTER TABLE `_m_blog_traduction`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uri` (`uri`),
  ADD KEY `uri_2` (`uri`(70)),
  ADD KEY `id_content` (`id_content`),
  ADD KEY `langue` (`langue`);

--
-- Indexes for table `_m_blog_version`
--
ALTER TABLE `_m_blog_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_content` (`id_content`),
  ADD KEY `uri` (`uri`(70)),
  ADD KEY `pseudo` (`pseudo`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `langue` (`langue`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `_m_news`
--
ALTER TABLE `_m_news`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pseudo` (`pseudo`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `active` (`active`),
  ADD KEY `ordre` (`ordre`);

--
-- Indexes for table `_m_news_traduction`
--
ALTER TABLE `_m_news_traduction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uri` (`uri`(70)),
  ADD KEY `id_content` (`id_content`),
  ADD KEY `langue` (`langue`);

--
-- Indexes for table `_m_news_version`
--
ALTER TABLE `_m_news_version`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_content` (`id_content`),
  ADD KEY `uri` (`uri`(70)),
  ADD KEY `pseudo` (`pseudo`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_groupe` (`id_groupe`),
  ADD KEY `langue` (`langue`),
  ADD KEY `active` (`active`);

--
-- Indexes for table `_order`
--
ALTER TABLE `_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_order_message`
--
ALTER TABLE `_order_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_order_message_traduction`
--
ALTER TABLE `_order_message_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_order_status`
--
ALTER TABLE `_order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_order_status_back`
--
ALTER TABLE `_order_status_back`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_order_status_back_traduction`
--
ALTER TABLE `_order_status_back_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_order_status_traduction`
--
ALTER TABLE `_order_status_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_paypal`
--
ALTER TABLE `_paypal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_promotion`
--
ALTER TABLE `_promotion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_rubrique`
--
ALTER TABLE `_rubrique`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_rubrique_users`
--
ALTER TABLE `_rubrique_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_support`
--
ALTER TABLE `_support`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_support_messages`
--
ALTER TABLE `_support_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_taxes`
--
ALTER TABLE `_taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users`
--
ALTER TABLE `_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_access_token`
--
ALTER TABLE `_users_access_token`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_activation`
--
ALTER TABLE `_users_activation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_address`
--
ALTER TABLE `_users_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_followers`
--
ALTER TABLE `_users_followers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_groupes`
--
ALTER TABLE `_users_groupes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_groupes_attributes`
--
ALTER TABLE `_users_groupes_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_groupes_attributes_traduction`
--
ALTER TABLE `_users_groupes_attributes_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_groupes_attributes_values`
--
ALTER TABLE `_users_groupes_attributes_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_groupes_traduction`
--
ALTER TABLE `_users_groupes_traduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_inbox`
--
ALTER TABLE `_users_inbox`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_info`
--
ALTER TABLE `_users_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_notification`
--
ALTER TABLE `_users_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_users_track`
--
ALTER TABLE `_users_track`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_user_facebook`
--
ALTER TABLE `_user_facebook`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_user_google`
--
ALTER TABLE `_user_google`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_user_stripe`
--
ALTER TABLE `_user_stripe`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_user_stripe_charge`
--
ALTER TABLE `_user_stripe_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_user_stripe_order`
--
ALTER TABLE `_user_stripe_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_user_stripe_order_items`
--
ALTER TABLE `_user_stripe_order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_website`
--
ALTER TABLE `_website`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `_website_traduction`
--
ALTER TABLE `_website_traduction`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `_cart`
--
ALTER TABLE `_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_categories`
--
ALTER TABLE `_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_categories_traduction`
--
ALTER TABLE `_categories_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_block`
--
ALTER TABLE `_dg_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_block_traduction`
--
ALTER TABLE `_dg_block_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_carousel`
--
ALTER TABLE `_dg_carousel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_carousel_traduction`
--
ALTER TABLE `_dg_carousel_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_cart`
--
ALTER TABLE `_dg_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_comments`
--
ALTER TABLE `_dg_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_download`
--
ALTER TABLE `_dg_download`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_email_notification`
--
ALTER TABLE `_dg_email_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `_dg_email_notification_traduction`
--
ALTER TABLE `_dg_email_notification_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;
--
-- AUTO_INCREMENT for table `_dg_email_notification_version`
--
ALTER TABLE `_dg_email_notification_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `_dg_files`
--
ALTER TABLE `_dg_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_files_traduction`
--
ALTER TABLE `_dg_files_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_firewall`
--
ALTER TABLE `_dg_firewall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `_dg_inbox`
--
ALTER TABLE `_dg_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_links`
--
ALTER TABLE `_dg_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_newsletter`
--
ALTER TABLE `_dg_newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_newsletter_emailling_campagne`
--
ALTER TABLE `_dg_newsletter_emailling_campagne`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_newsletter_emailling_groupe`
--
ALTER TABLE `_dg_newsletter_emailling_groupe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_newsletter_emailling_models`
--
ALTER TABLE `_dg_newsletter_emailling_models`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_onepage`
--
ALTER TABLE `_dg_onepage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_onepage_traduction`
--
ALTER TABLE `_dg_onepage_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_onepage_version`
--
ALTER TABLE `_dg_onepage_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_page`
--
ALTER TABLE `_dg_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `_dg_page_traduction`
--
ALTER TABLE `_dg_page_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `_dg_page_version`
--
ALTER TABLE `_dg_page_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_saas`
--
ALTER TABLE `_dg_saas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_stars`
--
ALTER TABLE `_dg_stars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_survey`
--
ALTER TABLE `_dg_survey`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_survey_response`
--
ALTER TABLE `_dg_survey_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_survey_traduction`
--
ALTER TABLE `_dg_survey_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_translator`
--
ALTER TABLE `_dg_translator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_translator_traduction`
--
ALTER TABLE `_dg_translator_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_dg_translator_version`
--
ALTER TABLE `_dg_translator_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_discountcode`
--
ALTER TABLE `_discountcode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_moderation`
--
ALTER TABLE `_moderation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_modules`
--
ALTER TABLE `_modules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `_modules_attributes`
--
ALTER TABLE `_modules_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_modules_attributes_traduction`
--
ALTER TABLE `_modules_attributes_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_modules_attributes_values`
--
ALTER TABLE `_modules_attributes_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_modules_traduction`
--
ALTER TABLE `_modules_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=901;
--
-- AUTO_INCREMENT for table `_m_blog`
--
ALTER TABLE `_m_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_m_blog_traduction`
--
ALTER TABLE `_m_blog_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_m_blog_version`
--
ALTER TABLE `_m_blog_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_m_news`
--
ALTER TABLE `_m_news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_m_news_traduction`
--
ALTER TABLE `_m_news_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_m_news_version`
--
ALTER TABLE `_m_news_version`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_order`
--
ALTER TABLE `_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_order_message`
--
ALTER TABLE `_order_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_order_message_traduction`
--
ALTER TABLE `_order_message_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_order_status`
--
ALTER TABLE `_order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_order_status_back`
--
ALTER TABLE `_order_status_back`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_order_status_back_traduction`
--
ALTER TABLE `_order_status_back_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_order_status_traduction`
--
ALTER TABLE `_order_status_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_paypal`
--
ALTER TABLE `_paypal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_promotion`
--
ALTER TABLE `_promotion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_rubrique`
--
ALTER TABLE `_rubrique`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
--
-- AUTO_INCREMENT for table `_rubrique_users`
--
ALTER TABLE `_rubrique_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_support`
--
ALTER TABLE `_support`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_support_messages`
--
ALTER TABLE `_support_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_taxes`
--
ALTER TABLE `_taxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_users`
--
ALTER TABLE `_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `_users_access_token`
--
ALTER TABLE `_users_access_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `_users_activation`
--
ALTER TABLE `_users_activation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_users_address`
--
ALTER TABLE `_users_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_users_followers`
--
ALTER TABLE `_users_followers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_users_groupes`
--
ALTER TABLE `_users_groupes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `_users_groupes_attributes`
--
ALTER TABLE `_users_groupes_attributes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_users_groupes_attributes_traduction`
--
ALTER TABLE `_users_groupes_attributes_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_users_groupes_attributes_values`
--
ALTER TABLE `_users_groupes_attributes_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `_users_groupes_traduction`
--
ALTER TABLE `_users_groupes_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=342;
--
-- AUTO_INCREMENT for table `_users_inbox`
--
ALTER TABLE `_users_inbox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_users_info`
--
ALTER TABLE `_users_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `_users_notification`
--
ALTER TABLE `_users_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `_users_track`
--
ALTER TABLE `_users_track`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_user_facebook`
--
ALTER TABLE `_user_facebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_user_google`
--
ALTER TABLE `_user_google`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_user_stripe`
--
ALTER TABLE `_user_stripe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_user_stripe_charge`
--
ALTER TABLE `_user_stripe_charge`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_user_stripe_order`
--
ALTER TABLE `_user_stripe_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_user_stripe_order_items`
--
ALTER TABLE `_user_stripe_order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `_website`
--
ALTER TABLE `_website`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `_website_traduction`
--
ALTER TABLE `_website_traduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
