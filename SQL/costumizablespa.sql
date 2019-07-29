-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 29-Jul-2019 às 03:14
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerceetep`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `about_items`
--

DROP TABLE IF EXISTS `about_items`;
CREATE TABLE IF NOT EXISTS `about_items` (
  `items_Id` int(11) NOT NULL AUTO_INCREMENT,
  `items_Text` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`items_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `about_items`
--

INSERT INTO `about_items` (`items_Id`, `items_Text`) VALUES
(1, 'Item 1'),
(2, 'Item 2'),
(3, 'Item 3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `catalog_informations`
--

DROP TABLE IF EXISTS `catalog_informations`;
CREATE TABLE IF NOT EXISTS `catalog_informations` (
  `catalogInformation_Id` int(11) NOT NULL AUTO_INCREMENT,
  `catalog_Text` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`catalogInformation_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `featured_product`
--

DROP TABLE IF EXISTS `featured_product`;
CREATE TABLE IF NOT EXISTS `featured_product` (
  `featured_Product_Id` int(11) NOT NULL AUTO_INCREMENT,
  `featuredProduct_FkId` int(11) NOT NULL,
  `featured_Product_Description` text NOT NULL,
  `featured_Product_Photo` longblob,
  `promotionTime` varchar(50) NOT NULL,
  `featured_Value` float(6,2) NOT NULL,
  PRIMARY KEY (`featured_Product_Id`),
  KEY `featuredProduct_FkId` (`featuredProduct_FkId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `featured_product`
--

INSERT INTO `featured_product` (`featured_Product_Id`, `featuredProduct_FkId`, `featured_Product_Description`, `featured_Product_Photo`, `promotionTime`, `featured_Value`) VALUES
(1, 2, 'Product promotion description here', NULL, '30/05 at 7:30pm', 8.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `feature_configuration`
--

DROP TABLE IF EXISTS `feature_configuration`;
CREATE TABLE IF NOT EXISTS `feature_configuration` (
  `configuration_Id` int(11) NOT NULL AUTO_INCREMENT,
  `featured_Title` varchar(50) DEFAULT NULL,
  `featured_Description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`configuration_Id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `orderProduct_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Client_Name` varchar(60) NOT NULL,
  `Client_Email` varchar(60) DEFAULT NULL,
  `Client_Phone` varchar(40) NOT NULL,
  `Delivery_Address` varchar(150) NOT NULL,
  `order_Description` text,
  `Client_Nickname` varchar(50) DEFAULT NULL,
  `order_Product_Id` int(11) DEFAULT NULL,
  PRIMARY KEY (`orderProduct_Id`),
  KEY `order_Product_Id` (`order_Product_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `orders`
--

INSERT INTO `orders` (`orderProduct_Id`, `Client_Name`, `Client_Email`, `Client_Phone`, `Delivery_Address`, `order_Description`, `Client_Nickname`, `order_Product_Id`) VALUES
(4, 'VinÃ­cius Augusto Soares Pio', 'vini.pio999@gmail.com', '12982785789', 'Rua Raul Seixas, 124', '', '', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `order_description`
--

DROP TABLE IF EXISTS `order_description`;
CREATE TABLE IF NOT EXISTS `order_description` (
  `orderDescription_ID` int(11) NOT NULL AUTO_INCREMENT,
  `orderDescription_Text` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`orderDescription_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_Id` int(11) NOT NULL AUTO_INCREMENT,
  `productCategory_Id` int(11) NOT NULL,
  `product_Name` varchar(100) NOT NULL,
  `product_Value` float(6,2) NOT NULL,
  `product_Photo` longblob,
  `product_Description` text,
  PRIMARY KEY (`product_Id`),
  UNIQUE KEY `product_Name` (`product_Name`),
  KEY `productCategory_Id` (`productCategory_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`product_Id`, `productCategory_Id`, `product_Name`, `product_Value`, `product_Photo`, `product_Description`) VALUES
(2, 1, 'teste', 12.00, NULL, 'teste'),
(3, 1, 'TESTE 2', 15.00, NULL, NULL),
(4, 2, 'TESTE DNV', 5.00, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `product_category`
--

DROP TABLE IF EXISTS `product_category`;
CREATE TABLE IF NOT EXISTS `product_category` (
  `category_Id` int(11) NOT NULL AUTO_INCREMENT,
  `category_Name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_Id`),
  UNIQUE KEY `category_Name` (`category_Name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `product_category`
--

INSERT INTO `product_category` (`category_Id`, `category_Name`) VALUES
(2, 'Categoria 1'),
(1, 'Categoria 2'),
(3, 'TESTE');

-- --------------------------------------------------------

--
-- Estrutura da tabela `user_admin`
--

DROP TABLE IF EXISTS `user_admin`;
CREATE TABLE IF NOT EXISTS `user_admin` (
  `user_Id` int(11) NOT NULL AUTO_INCREMENT,
  `user_Name` varchar(100) NOT NULL,
  `user_Login` varchar(20) NOT NULL,
  `user_Password` varchar(32) NOT NULL,
  `user_Situation` enum('Ativo','Inativo') DEFAULT NULL,
  PRIMARY KEY (`user_Id`),
  UNIQUE KEY `user_Login` (`user_Login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `website_about`
--

DROP TABLE IF EXISTS `website_about`;
CREATE TABLE IF NOT EXISTS `website_about` (
  `about_Id` int(11) NOT NULL AUTO_INCREMENT,
  `about_Title` varchar(50) NOT NULL,
  `about_Description` varchar(500) DEFAULT NULL,
  `about_subTitle` varchar(50) DEFAULT NULL,
  `about_subDescription` text NOT NULL,
  PRIMARY KEY (`about_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `website_about`
--

INSERT INTO `website_about` (`about_Id`, `about_Title`, `about_Description`, `about_subTitle`, `about_subDescription`) VALUES
(1, 'About Title', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', 'About SubTitle', 'It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.');

-- --------------------------------------------------------

--
-- Estrutura da tabela `website_configuration`
--

DROP TABLE IF EXISTS `website_configuration`;
CREATE TABLE IF NOT EXISTS `website_configuration` (
  `table_Id` int(11) NOT NULL AUTO_INCREMENT,
  `website_Name` varchar(50) NOT NULL,
  `website_Title` varchar(100) NOT NULL,
  `website_subTitle` varchar(100) NOT NULL,
  `website_Photo` blob,
  PRIMARY KEY (`table_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `website_configuration`
--

INSERT INTO `website_configuration` (`table_Id`, `website_Name`, `website_Title`, `website_subTitle`, `website_Photo`) VALUES
(1, 'Website Name', 'Website Title', 'Website Sub Title', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `website_informations`
--

DROP TABLE IF EXISTS `website_informations`;
CREATE TABLE IF NOT EXISTS `website_informations` (
  `websiteInformation` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(80) NOT NULL,
  `number` int(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `cep` int(10) DEFAULT NULL,
  `phone_Number` varchar(50) NOT NULL,
  `opening_Week` varchar(80) NOT NULL,
  `opening_Weekends` varchar(80) NOT NULL,
  PRIMARY KEY (`websiteInformation`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `website_informations`
--

INSERT INTO `website_informations` (`websiteInformation`, `street`, `number`, `city`, `cep`, `phone_Number`, `opening_Week`, `opening_Weekends`) VALUES
(1, 'Rua Raul Seixas', 124, 'São José dos Campos', 12235673, '(12)98278-5789', 'Monday to Friday 9:00 - 23:00', 'Saturdays, sundays and Holidays 9:00 - 18:00');

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`productCategory_Id`) REFERENCES `product_category` (`category_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
