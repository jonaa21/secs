-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: secs
-- ------------------------------------------------------
-- Server version	8.0.18

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

-- Dump completed
