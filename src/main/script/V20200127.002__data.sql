-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: secs
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `computer`
--

INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (1,'HDD',500.99,1);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (2,'SSD',321.99,2);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (3,'SSD',393.98,3);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (4,'SSD',393.98,4);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (5,'HDD',312.99,5);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (6,'SSD',1359.98,6);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (7,'SSD',1784.98,7);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (8,'SSD',1378.99,8);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (9,'SSD',494.99,9);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (10,'SSD',516.98,10);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (11,'SSD',1062.99,11);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (12,'SSD',1468.98,12);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (13,'SSD',1828.99,13);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (14,'SSD',1636.97,14);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (15,'SSD',1891.98,15);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (16,'SSD',951.97,16);
INSERT INTO `computer` (`id`, `storage_type`, `price`, `config_id`) VALUES (17,'SSD',1294.98,17);

--
-- Dumping data for table `computer_config`
--

INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (1,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (2,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (3,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (4,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (5,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (6,_binary '\0',_binary '\0',_binary '',_binary '',_binary '\0',555.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (7,_binary '\0',_binary '\0',_binary '',_binary '\0',_binary '',800.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (8,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',245.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (9,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (10,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',0.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (11,_binary '\0',_binary '',_binary '\0',_binary '\0',_binary '\0',245.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (12,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',490.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (13,_binary '\0',_binary '\0',_binary '\0',_binary '\0',_binary '\0',735.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (14,_binary '',_binary '',_binary '\0',_binary '',_binary '',980.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (15,_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',1225.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (16,_binary '\0',_binary '\0',_binary '\0',_binary '',_binary '\0',245.00);
INSERT INTO `computer_config` (`id`, `bluetooth`, `thunderbolt`, `lte`, `touch_screen`, `two_in_one`, `sub_total`) VALUES (17,_binary '',_binary '\0',_binary '\0',_binary '',_binary '\0',490.00);

--
-- Dumping data for table `hardware`
--

INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (1,8,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (2,82,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (3,44,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (4,19,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (5,1,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (6,83,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (7,50,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (8,43,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (9,1,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (10,82,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (11,50,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (12,36,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (13,1,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (14,82,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (15,50,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (16,36,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (17,8,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (18,83,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (19,50,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (20,30,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (21,6,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (22,80,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (23,46,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (24,35,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (25,13,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (26,86,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (27,46,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (28,35,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (29,18,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (30,78,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (31,51,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (32,23,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (33,8,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (34,87,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (35,44,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (36,43,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (37,8,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (38,87,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (39,44,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (40,36,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (41,13,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (42,84,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (43,51,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (44,33,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (45,18,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (46,86,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (47,51,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (48,35,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (49,4,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (50,79,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (51,46,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (52,33,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (53,18,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (54,80,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (55,48,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (56,39,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (57,18,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (58,80,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (59,48,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (60,25,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (61,7,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (62,86,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (63,48,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (64,35,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (65,13,2);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (66,80,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (67,46,1);
INSERT INTO `hardware` (`id`, `stock_id`, `amount`) VALUES (68,35,1);

--
-- Dumping data for table `hardware_config`
--

INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (1,1);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (1,2);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (1,3);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (1,4);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (2,5);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (2,6);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (2,7);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (2,8);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (3,9);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (3,10);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (3,11);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (3,12);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (4,13);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (4,14);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (4,15);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (4,16);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (5,17);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (5,18);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (5,19);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (5,20);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (6,21);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (6,22);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (6,23);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (6,24);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (7,25);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (7,26);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (7,27);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (7,28);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (8,29);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (8,30);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (8,31);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (8,32);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (9,33);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (9,34);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (9,35);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (9,36);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (10,37);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (10,38);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (10,39);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (10,40);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (11,41);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (11,42);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (11,43);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (11,44);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (12,45);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (12,46);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (12,47);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (12,48);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (13,49);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (13,50);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (13,51);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (13,52);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (14,53);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (14,54);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (14,55);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (14,56);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (15,57);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (15,58);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (15,59);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (15,60);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (16,61);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (16,62);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (16,63);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (16,64);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (17,65);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (17,66);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (17,67);
INSERT INTO `hardware_config` (`config_id`, `hardware_id`) VALUES (17,68);

--
-- Dumping data for table `hardware_stock`
--

INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (1,'DDR3-1333',4.00,14,30.00,'GB',1,1,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (2,'DDR3-1333',8.00,20,50.00,'GB',2,1,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (3,'DDR3-1600',16.00,20,75.00,'GB',2,1,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (4,'DDR4-2400',32.00,18,90.00,'GB',3,1,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (5,'DDR3-1333',8.00,20,30.00,'GB',2,2,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (6,'DDR4-2666',16.00,18,85.00,'GB',3,2,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (7,'DDR4-2666',32.00,18,75.00,'GB',3,2,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (8,'DDR3-1333',8.00,10,25.00,'GB',1,12,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (9,'DDR3-1600',16.00,20,60.00,'GB',1,12,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (10,'DDR4-2666',8.00,18,80.00,'GB',3,13,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (11,'DDR3-1600',16.00,18,60.00,'GB',2,13,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (12,'DDR4-3200',16.00,20,95.00,'GB',3,13,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (13,'DDR4-3200',32.00,12,85.00,'GB',3,1,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (14,'DDR3-1333',4.00,18,50.00,'GB',1,15,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (15,'DDR3-1333',8.00,20,60.00,'GB',2,15,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (16,'DDR3-1600',16.00,20,80.00,'GB',2,15,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (17,'DDR4-2400',8.00,20,90.00,'GB',2,16,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (18,'DDR4-2666',16.00,12,110.00,'GB',3,16,1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (19,'HDD',512.00,18,50.00,'GB',1,2,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (20,'HDD',1024.00,20,60.00,'GB',2,2,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (21,'SSD',256.00,10,70.00,'GB',2,2,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (22,'SSD',512.00,15,160.00,'GB',2,2,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (23,'SSD',1024.00,4,175.00,'GB',3,3,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (24,'HDD',512.00,20,120.00,'GB',2,17,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (25,'SSD',1024.00,19,160.00,'GB',3,1,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (26,'HDD',1024.00,20,60.00,'GB',2,3,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (27,'HDD',1024.00,20,70.00,'GB',2,16,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (28,'HDD',1024.00,20,65.00,'GB',2,17,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (29,'SSD',512.00,20,155.00,'GB',3,3,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (30,'HDD',512.00,19,55.00,'GB',1,16,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (31,'HDD',1024.00,20,74.99,'GB',2,18,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (32,'HDD',512.00,20,49.99,'GB',2,18,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (33,'SSD',1024.00,18,119.00,'GB',3,3,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (34,'SSD',128.00,19,64.99,'GB',2,1,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (35,'SSD',512.00,14,89.99,'GB',3,1,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (36,'SSD',256.00,17,75.99,'GB',1,18,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (37,'HDD',512.00,20,60.00,'GB',2,1,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (38,'SSD',512.00,20,124.99,'GB',2,17,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (39,'SSD',1024.00,18,149.99,'GB',3,17,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (40,'HDD',1024.00,20,74.99,'GB',2,1,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (41,'SSD',512.00,20,94.99,'GB',2,13,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (42,'HDD',512.00,20,59.00,'GB',2,3,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (43,'SSD',256.00,17,54.00,'GB',1,1,2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (44,'2 Core i3-8145U',2.10,17,281.00,'Ghz',1,9,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (45,'4 Core i5-8265U',1.60,20,297.00,'Ghz',2,9,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (46,'6 Core i7-8750H',2.20,16,395.00,'Ghz',3,9,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (47,'2 Core i3-7350K',4.00,20,168.00,'Ghz',2,9,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (48,'6 Core Ryzen 5 1600X',3.50,16,136.99,'Ghz',3,6,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (49,'4 Core Ryzen 3 1200',3.20,20,125.99,'Ghz',2,6,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (50,'2 Core i3-7300',4.00,14,138.00,'Ghz',1,9,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (51,'4 Core i7-7740X',4.30,16,339.00,'Ghz',3,9,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (52,'4 Core i5-7400',3.00,19,182.00,'Ghz',2,9,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (53,'4 Core Ryzen 5 1400',3.40,20,119.99,'Ghz',2,6,3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (54,'Wired Gaming RGB Keyboard',0.00,20,145.99,NULL,3,11,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (55,'Wireless Gaming Keyboard',0.00,20,129.99,NULL,3,11,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (56,'Wireless Keyboard',0.00,20,85.00,NULL,2,11,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (57,'Wired Keyboard',0.00,20,70.00,NULL,2,11,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (58,'Wireless Multimedia Keyboard',0.00,20,99.99,NULL,2,11,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (59,'Wired Gaming Keyboard',0.00,20,119.99,NULL,2,11,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (60,'Wired Multimedia Keyboard',0.00,20,80.00,NULL,2,11,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (61,'Bluetooth Gaming RGB Keyboard',0.00,20,165.99,NULL,3,10,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (62,'Wireless Gaming RGB Keyboard',0.00,20,149.99,NULL,3,10,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (63,'Wireless Keyboard',0.00,20,55.00,NULL,1,15,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (64,'Wired Keyboard',0.00,20,30.00,NULL,1,15,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (65,'Wireless Multimedia Keyboard',0.00,20,69.99,NULL,1,13,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (66,'Wired Gaming Keyboard',0.00,20,129.99,NULL,2,10,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (67,'Wired Multimedia Keyboard',0.00,20,35.00,NULL,2,15,5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (68,'MX Vertical Mouse',0.00,20,99.99,NULL,3,11,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (69,'G502 Hero Wired Gaming Mouse',0.00,20,79.99,NULL,3,11,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (70,'Wirless Gaming RGB Mouse',0.00,20,85.99,NULL,2,10,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (71,'Wireless Gaming 3-Button Mouse',0.00,20,89.99,NULL,3,10,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (72,'Bluetooth Mouse',0.00,20,35.00,NULL,1,15,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (73,'Wired Mouse',0.00,20,20.00,NULL,1,15,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (74,'Wireless Mouse',0.00,20,69.99,NULL,2,13,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (75,'Wired Gaming 3-Button Mouse',0.00,20,79.99,NULL,2,10,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (76,'MX Master 3 Mouse',0.00,20,99.99,NULL,3,11,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (77,'Wireless Mouse',0.00,20,25.00,NULL,1,15,6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (78,'Nvidia GeForce RTX 2060 Super',8.00,14,399.99,'GB',3,5,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (79,'Gigabyte GeForce RTX 2060 OC',6.00,13,399.99,'GB',3,5,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (80,'MSI GeForce GTX 1650 Gaming',4.00,11,149.99,'GB',3,5,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (81,'AMD Radeon RX 5700',8.00,15,349.00,'GB',2,6,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (82,'Sapphire Radeon RX 570',4.00,11,119.99,'GB',1,6,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (83,'XFX Radeon RX 550',2.00,13,69.99,'GB',1,6,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (84,'Gigabyte AMD Radeon RX 5500 XT',4.00,13,189.99,'GB',3,6,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (85,'EVGA GeForce GTX 1650 Super SC Ultra',4.00,14,159.99,'GB',2,5,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (86,'ASUS AMD Radeon RX 5700',8.00,12,329.99,'GB',3,6,4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`, `category_id`) VALUES (87,'Gigabyte Radeon RX 550',2.00,12,109.99,'GB',1,6,4);

--
-- Dumping data for table `receipt`
--

INSERT INTO `receipt` (`id`, `payment_type_id`, `customer_id`, `total_price`, `delivery_date`, `receipt_status`, `date_created`) VALUES (1,3,24,1610.94,'2020-02-10','NEW','2020-01-27 22:31:16');
INSERT INTO `receipt` (`id`, `payment_type_id`, `customer_id`, `total_price`, `delivery_date`, `receipt_status`, `date_created`) VALUES (2,3,6,3457.95,'2020-02-10','NEW','2020-10-27 22:32:21');
INSERT INTO `receipt` (`id`, `payment_type_id`, `customer_id`, `total_price`, `delivery_date`, `receipt_status`, `date_created`) VALUES (3,4,2,1873.98,'2020-02-10','NEW','2020-04-27 22:32:52');
INSERT INTO `receipt` (`id`, `payment_type_id`, `customer_id`, `total_price`, `delivery_date`, `receipt_status`, `date_created`) VALUES (4,4,2,8406.89,'2020-02-10','NEW','2020-02-27 22:34:36');
INSERT INTO `receipt` (`id`, `payment_type_id`, `customer_id`, `total_price`, `delivery_date`, `receipt_status`, `date_created`) VALUES (5,2,3,2246.95,'2020-02-10','NEW','2020-08-27 22:35:56');

--
-- Dumping data for table `receipt_computer`
--

INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (2,1);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (4,1);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (1,1);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (3,1);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (6,2);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (5,2);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (7,2);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (9,3);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (8,3);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (10,4);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (11,4);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (13,4);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (12,4);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (14,4);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (15,4);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (17,5);
INSERT INTO `receipt_computer` (`computers_id`, `receipt_id`) VALUES (16,5);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
