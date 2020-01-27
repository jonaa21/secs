-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: secs
-- ------------------------------------------------------
-- Server version	8.0.18

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `name`)
VALUES (1, 'Samsung');
INSERT INTO `brand` (`id`, `name`)
VALUES (2, 'Kingston');
INSERT INTO `brand` (`id`, `name`)
VALUES (3, 'WD');
INSERT INTO `brand` (`id`, `name`)
VALUES (4, 'LG');
INSERT INTO `brand` (`id`, `name`)
VALUES (5, 'Nvidia');
INSERT INTO `brand` (`id`, `name`)
VALUES (6, 'AMD');
INSERT INTO `brand` (`id`, `name`)
VALUES (7, 'Asus');
INSERT INTO `brand` (`id`, `name`)
VALUES (8, 'Acer');
INSERT INTO `brand` (`id`, `name`)
VALUES (9, 'Intel');
INSERT INTO `brand` (`id`, `name`)
VALUES (10, 'Razer');
INSERT INTO `brand` (`id`, `name`)
VALUES (11, 'Logitech');
INSERT INTO `brand` (`id`, `name`)
VALUES (12, 'Lenovo');
INSERT INTO `brand` (`id`, `name`)
VALUES (13, 'Dell');
INSERT INTO `brand` (`id`, `name`)
VALUES (14, 'Alienware');
INSERT INTO `brand` (`id`, `name`)
VALUES (15, 'Generic');
INSERT INTO `brand` (`id`, `name`)
VALUES (16, 'Sandisk');
INSERT INTO `brand` (`id`, `name`)
VALUES (17, 'Seagate');
INSERT INTO `brand` (`id`, `name`)
VALUES (18, 'Toshiba');
INSERT INTO `brand` (`id`, `name`)
VALUES (19, 'Microsoft');
INSERT INTO `brand` (`id`, `name`)
VALUES (20, 'LiteOn');
INSERT INTO `brand` (`id`, `name`)
VALUES (21, 'Corsair');
INSERT INTO `brand` (`id`, `name`)
VALUES (22, 'BitFenix');

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`)
VALUES (1, 'RAM');
INSERT INTO `category` (`id`, `name`)
VALUES (2, 'STORAGE');
INSERT INTO `category` (`id`, `name`)
VALUES (3, 'CPU');
INSERT INTO `category` (`id`, `name`)
VALUES (4, 'GPU');
INSERT INTO `category` (`id`, `name`)
VALUES (5, 'KEYBOARD');
INSERT INTO `category` (`id`, `name`)
VALUES (6, 'MOUSE');
INSERT INTO `category` (`id`, `name`)
VALUES (7, 'MONITOR');
INSERT INTO `category` (`id`, `name`)
VALUES (8, 'CABLE');
INSERT INTO `category` (`id`, `name`)
VALUES (9, 'EXTRA_FEATURES');

--
-- Dumping data for table `computer`
--


--
-- Dumping data for table `computer_config`
--


--
-- Dumping data for table `customer`
--


--
-- Dumping data for table `hardware`
--


--
-- Dumping data for table `hardware_config`
--


--
-- Dumping data for table `spec_level`
--

INSERT INTO `spec_level` (`id`, `spec_status`)
VALUES (3, 'HIGH');
INSERT INTO `spec_level` (`id`, `spec_status`)
VALUES (1, 'LOW');
INSERT INTO `spec_level` (`id`, `spec_status`)
VALUES (2, 'MEDIUM');


--
-- Dumping data for table `hardware_stock`
--

INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (1, 'DDR3-1333', 4.00, 20, 30.00, 'GB', 1, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (2, 'DDR3-1333', 8.00, 20, 50.00, 'GB', 2, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (3, 'DDR3-1600', 16.00, 20, 75.00, 'GB', 2, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (4, 'DDR4-2400', 32.00, 20, 90.00, 'GB', 3, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (5, 'DDR3-1333', 8.00, 20, 30.00, 'GB', 2, 2, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (6, 'DDR4-2666', 16.00, 20, 85.00, 'GB', 3, 2, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (7, 'DDR4-2666', 32.00, 20, 75.00, 'GB', 3, 2, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (8, 'DDR3-1333', 8.00, 20, 25.00, 'GB', 1, 12, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (9, 'DDR3-1600', 16.00, 20, 60.00, 'GB', 1, 12, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (10, 'DDR4-2666', 8.00, 20, 80.00, 'GB', 3, 13, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (11, 'DDR3-1600', 16.00, 20, 60.00, 'GB', 2, 13, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (12, 'DDR4-3200', 16.00, 20, 95.00, 'GB', 3, 13, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (13, 'DDR4-3200', 32.00, 20, 85.00, 'GB', 3, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (14, 'DDR3-1333', 4.00, 20, 50.00, 'GB', 1, 15, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (15, 'DDR3-1333', 8.00, 20, 60.00, 'GB', 2, 15, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (16, 'DDR3-1600', 16.00, 20, 80.00, 'GB', 2, 15, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (17, 'DDR4-2400', 8.00, 20, 90.00, 'GB', 2, 16, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (18, 'DDR4-2666', 16.00, 20, 110.00, 'GB', 3, 16, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (19, 'HDD', 512.00, 20, 50.00, 'GB', 1, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (20, 'HDD', 1024.00, 20, 60.00, 'GB', 2, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (21, 'SSD', 256.00, 10, 70.00, 'GB', 2, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (22, 'SSD', 512.00, 15, 160.00, 'GB', 2, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (23, 'SSD', 1024.00, 5, 175.00, 'GB', 3, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (24, 'HDD', 512.00, 20, 120.00, 'GB', 2, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (25, 'SSD', 1024.00, 20, 160.00, 'GB', 3, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (26, 'HDD', 1024.00, 20, 60.00, 'GB', 2, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (27, 'HDD', 1024.00, 20, 70.00, 'GB', 2, 16, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (28, 'HDD', 1024.00, 20, 65.00, 'GB', 2, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (29, 'SSD', 512.00, 20, 155.00, 'GB', 3, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (30, 'HDD', 512.00, 20, 55.00, 'GB', 1, 16, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (31, 'HDD', 1024.00, 20, 74.99, 'GB', 2, 18, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (32, 'HDD', 512.00, 20, 49.99, 'GB', 2, 18, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (33, 'SSD', 1024.00, 20, 119.00, 'GB', 3, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (34, 'SSD', 128.00, 20, 64.99, 'GB', 2, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (35, 'SSD', 512.00, 20, 89.99, 'GB', 3, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (36, 'SSD', 256.00, 20, 75.99, 'GB', 1, 18, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (37, 'HDD', 512.00, 20, 60.00, 'GB', 2, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (38, 'SSD', 512.00, 20, 124.99, 'GB', 2, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (39, 'SSD', 1024.00, 20, 149.99, 'GB', 3, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (40, 'HDD', 1024.00, 20, 74.99, 'GB', 2, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (41, 'SSD', 512.00, 20, 94.99, 'GB', 2, 13, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (42, 'HDD', 512.00, 20, 59.00, 'GB', 2, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (43, 'SSD', 256.00, 20, 54.00, 'GB', 1, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (44, '2 Core i3-8145U', 2.10, 20, 281.00, 'Ghz', 1, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (45, '4 Core i5-8265U', 1.60, 20, 297.00, 'Ghz', 2, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (46, '6 Core i7-8750H', 2.20, 20, 395.00, 'Ghz', 3, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (47, '2 Core i3-7350K', 4.00, 20, 168.00, 'Ghz', 2, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (48, '6 Core Ryzen 5 1600X', 3.50, 20, 136.99, 'Ghz', 3, 6, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (49, '4 Core Ryzen 3 1200', 3.20, 20, 125.99, 'Ghz', 2, 6, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (50, '2 Core i3-7300', 4.00, 20, 138.00, 'Ghz', 1, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (51, '4 Core i7-7740X', 4.30, 20, 339.00, 'Ghz', 3, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (52, '4 Core i5-7400', 3.00, 20, 182.00, 'Ghz', 2, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (53, '4 Core Ryzen 5 1400', 3.40, 20, 119.99, 'Ghz', 2, 6, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (54, 'Wired Gaming RGB Keyboard', 0.00, 20, 145.99, NULL, 3, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (55, 'Wireless Gaming Keyboard', 0.00, 20, 129.99, NULL, 3, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (56, 'Wireless Keyboard', 0.00, 20, 85.00, NULL, 2, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (57, 'Wired Keyboard', 0.00, 20, 70.00, NULL, 2, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (58, 'Wireless Multimedia Keyboard', 0.00, 20, 99.99, NULL, 2, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (59, 'Wired Gaming Keyboard', 0.00, 20, 119.99, NULL, 2, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (60, 'Wired Multimedia Keyboard', 0.00, 20, 80.00, NULL, 2, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (61, 'Bluetooth Gaming RGB Keyboard', 0.00, 20, 165.99, NULL, 3, 10, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (62, 'Wireless Gaming RGB Keyboard', 0.00, 20, 149.99, NULL, 3, 10, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (63, 'Wireless Keyboard', 0.00, 20, 55.00, NULL, 1, 15, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (64, 'Wired Keyboard', 0.00, 20, 30.00, NULL, 1, 15, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (65, 'Wireless Multimedia Keyboard', 0.00, 20, 69.99, NULL, 1, 13, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (66, 'Wired Gaming Keyboard', 0.00, 20, 129.99, NULL, 2, 10, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (67, 'Wired Multimedia Keyboard', 0.00, 20, 35.00, NULL, 2, 15, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (68, 'MX Vertical Mouse', 0.00, 20, 99.99, NULL, 3, 11, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (69, 'G502 Hero Wired Gaming Mouse', 0.00, 20, 79.99, NULL, 3, 11, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (70, 'Wirless Gaming RGB Mouse', 0.00, 20, 85.99, NULL, 2, 10, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (71, 'Wireless Gaming 3-Button Mouse', 0.00, 20, 89.99, NULL, 3, 10, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (72, 'Bluetooth Mouse', 0.00, 20, 35.00, NULL, 1, 15, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (73, 'Wired Mouse', 0.00, 20, 20.00, NULL, 1, 15, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (74, 'Wireless Mouse', 0.00, 20, 69.99, NULL, 2, 13, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (75, 'Wired Gaming 3-Button Mouse', 0.00, 20, 79.99, NULL, 2, 10, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (76, 'MX Master 3 Mouse', 0.00, 20, 99.99, NULL, 3, 11, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (77, 'Wireless Mouse', 0.00, 20, 25.00, NULL, 1, 15, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (78, 'Nvidia GeForce RTX 2060 Super', 8.00, 15, 399.99, 'GB', 3, 5, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (79, 'Gigabyte GeForce RTX 2060 OC', 6.00, 15, 399.99, 'GB', 3, 5, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (80, 'MSI GeForce GTX 1650 Gaming', 4.00, 15, 149.99, 'GB', 3, 5, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (81, 'AMD Radeon RX 5700', 8.00, 15, 349.00, 'GB', 2, 6, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (82, 'Sapphire Radeon RX 570', 4.00, 15, 119.99, 'GB', 1, 6, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (83, 'XFX Radeon RX 550', 2.00, 15, 69.99, 'GB', 1, 6, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (84, 'Gigabyte AMD Radeon RX 5500 XT', 4.00, 15, 189.99, 'GB', 3, 6, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (85, 'EVGA GeForce GTX 1650 Super SC Ultra', 4.00, 15, 159.99, 'GB', 2, 5, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (86, 'ASUS AMD Radeon RX 5700', 8.00, 15, 329.99, 'GB', 3, 6, 4);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `unit`, `spec_level_id`, `brand_id`,
                              `category_id`)
VALUES (87, 'Gigabyte Radeon RX 550', 2.00, 15, 109.99, 'GB', 1, 6, 4);

--
-- Dumping data for table `order`
--


--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `name`)
VALUES (1, 'CREDIT_CARD');
INSERT INTO `payment_type` (`id`, `name`)
VALUES (2, 'DEBIT_CARD');
INSERT INTO `payment_type` (`id`, `name`)
VALUES (3, 'PAYPAL');
INSERT INTO `payment_type` (`id`, `name`)
VALUES (4, 'MOPE');
INSERT INTO `payment_type` (`id`, `name`)
VALUES (5, 'TRANSFER');

--
-- Dumping data for table `receipt`
--


--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `name`)
VALUES (1, 'User');
INSERT INTO `role` (`id`, `name`)
VALUES (2, 'Admin');

--
-- Dumping data for table `user`
--
