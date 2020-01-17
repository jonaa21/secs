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
-- Dumping data for table `hardware_stock`
--

INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (1, 'DDR3-1333', 4.00, 20, 30.00, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (2, 'DDR3-1333', 8.00, 20, 50.00, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (3, 'DDR3-1600', 16.00, 20, 75.00, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (4, 'DDR4-2400', 32.00, 20, 0.00, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (5, 'DDR3-1333', 8.00, 20, 0.00, 2, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (6, 'DDR4-2666', 16.00, 20, 0.00, 2, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (7, 'DDR4-2666', 32.00, 20, 0.00, 2, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (8, 'DDR3-1333', 8.00, 20, 0.00, 12, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (9, 'DDR3-1600', 16.00, 20, 0.00, 12, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (10, 'DDR4-2666', 8.00, 20, 0.00, 13, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (11, 'DDR3-1600', 16.00, 20, 0.00, 13, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (12, 'DDR4-3200', 16.00, 20, 0.00, 13, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (13, 'DDR4-3200', 32.00, 20, 0.00, 1, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (14, 'DDR3-1333', 4.00, 20, 0.00, 15, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (15, 'DDR3-1333', 8.00, 20, 0.00, 15, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (16, 'DDR3-1600', 16.00, 20, 0.00, 15, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (17, 'DDR4-2400', 8.00, 20, 0.00, 16, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (18, 'DDR4-2666', 16.00, 20, 0.00, 16, 1);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (19, 'HDD', 512.00, 20, 50.00, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (20, 'HDD', 1024.00, 20, 60.00, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (21, 'SSD', 256.00, 10, 70.00, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (22, 'SSD', 512.00, 15, 130.00, 2, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (23, 'SSD', 1024.00, 5, 200.00, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (24, 'HDD', 512.00, 20, 0.00, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (25, 'SSD', 1024.00, 20, 0.00, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (26, 'HDD', 1024.00, 20, 0.00, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (27, 'HDD', 1024.00, 20, 0.00, 16, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (28, 'HDD', 1024.00, 20, 0.00, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (29, 'SSD', 512.00, 20, 0.00, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (30, 'HDD', 512.00, 20, 0.00, 16, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (31, 'HDD', 1024.00, 20, 0.00, 18, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (32, 'HDD', 512.00, 20, 0.00, 18, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (33, 'SSD', 1024.00, 20, 0.00, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (34, 'SSD', 128.00, 20, 0.00, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (35, 'SSD', 512.00, 20, 0.00, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (36, 'SSD', 256.00, 20, 0.00, 18, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (37, 'HDD', 512.00, 20, 0.00, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (38, 'SSD', 512.00, 20, 0.00, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (39, 'SSD', 1024.00, 20, 0.00, 17, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (40, 'HDD', 1024.00, 20, 0.00, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (41, 'SSD', 512.00, 20, 0.00, 13, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (42, 'HDD', 512.00, 20, 0.00, 3, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (43, 'SSD', 256.00, 20, 0.00, 1, 2);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (44, '2 Core i3-8145U', 2.10, 20, 0.00, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (45, '4 Core i5-8265U', 1.60, 20, 0.00, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (46, '6 Core i7-8750H', 2.20, 20, 0.00, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (47, '2 Core i3-7350K', 4.00, 20, 0.00, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (48, '6 Core Ryzen 5 1600X', 3.50, 20, 0.00, 6, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (49, '4 Core Ryzen 3 1200', 3.20, 20, 0.00, 6, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (50, '2 Core i3-7300', 4.00, 20, 0.00, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (51, '4 Core i7-7740X', 4.30, 20, 0.00, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (52, '4 Core i5-7400', 3.00, 20, 0.00, 9, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (53, '4 Core Ryzen 5 1400', 3.40, 20, 0.00, 6, 3);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (54, 'Wired Gaming RGB Keyboard', 0.00, 20, 145.99, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (55, 'Wireless Gaming Keyboard', 0.00, 20, 129.99, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (56, 'Wireless Keyboard', 0.00, 20, 85.00, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (57, 'Wired Keyboard', 0.00, 20, 70.00, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (58, 'Wireless Multimedia Keyboard', 0.00, 20, 99.99, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (59, 'Wired Gaming Keyboard', 0.00, 20, 119.99, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (60, 'Wired Multimedia Keyboard', 0.00, 20, 80.00, 11, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (61, 'Bluetooth Gaming RGB Keyboard', 0.00, 20, 165.99, 10, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (62, 'Wireless Gaming RGB Keyboard', 0.00, 20, 149.99, 10, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (63, 'Wireless Keyboard', 0.00, 20, 55.00, 15, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (64, 'Wired Keyboard', 0.00, 20, 30.00, 15, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (65, 'Wireless Multimedia Keyboard', 0.00, 20, 69.99, 13, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (66, 'Wired Gaming Keyboard', 0.00, 20, 129.99, 10, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (67, 'Wired Multimedia Keyboard', 0.00, 20, 35.00, 15, 5);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (68, 'MX Vertical Mouse', 0.00, 20, 99.99, 11, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (69, 'G502 Hero Wired Gaming Mouse', 0.00, 20, 79.99, 11, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (70, 'Wirless Gaming RGB Mouse', 0.00, 20, 85.99, 10, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (71, 'Wireless Gaming 3-Button Mouse', 0.00, 20, 89.99, 10, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (72, 'Bluetooth Mouse', 0.00, 20, 35.00, 15, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (73, 'Wired Mouse', 0.00, 20, 20.00, 15, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (74, 'Wireless Mouse', 0.00, 20, 69.99, 13, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (75, 'Wired Gaming 3-Button Mouse', 0.00, 20, 79.99, 10, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (76, 'MX Master 3 Mouse', 0.00, 20, 99.99, 11, 6);
INSERT INTO `hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (77, 'Wireless Mouse', 0.00, 20, 25.00, 15, 6);

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
