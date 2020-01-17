USE `secs`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: secs
-- ------------------------------------------------------
-- Server version	8.0.18
--
-- Dumping data for table `brand`
--

INSERT INTO `brand`
VALUES (1, 'Samsung'),
       (2, 'Kingston'),
       (3, 'WD'),
       (4, 'LG'),
       (5, 'Nvidia'),
       (6, 'AMD'),
       (7, 'Asus'),
       (8, 'Acer'),
       (9, 'Intel'),
       (10, 'Razer'),
       (11, 'Logitech'),
       (12, 'Lenovo'),
       (13, 'Dell'),
       (14, 'Alienware'),
       (15, 'Generic'),
       (16, 'Sandisk'),
       (17, 'Seagate'),
       (18, 'Toshiba'),
       (19, 'Microsoft'),
       (20, 'LiteOn'),
       (21, 'Corsair'),
       (22, 'BitFenix');

--
-- Dumping data for table `category`
--

INSERT INTO `category`
VALUES (1, 'RAM'),
       (2, 'STORAGE'),
       (3, 'CPU'),
       (4, 'GPU'),
       (5, 'KEYBOARD'),
       (6, 'MOUSE'),
       (7, 'MONITOR'),
       (8, 'CABLE');

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

INSERT INTO `hardware_stock`
VALUES (1, 'DDR3-1333', 4.00, 20, 30.00, 1, 1),
       (2, 'DDR3-1333', 8.00, 20, 50.00, 1, 1),
       (3, 'DDR3-1600', 16.00, 20, 75.00, 1, 1),
       (4, 'DDR4-2400', 32.00, 20, 0.00, 1, 1),
       (5, 'DDR3-1333', 8.00, 20, 0.00, 2, 1),
       (6, 'DDR4-2666', 16.00, 20, 0.00, 2, 1),
       (7, 'DDR4-2666', 32.00, 20, 0.00, 2, 1),
       (8, 'DDR3-1333', 8.00, 20, 0.00, 12, 1),
       (9, 'DDR3-1600', 16.00, 20, 0.00, 12, 1),
       (10, 'DDR4-2666', 8.00, 20, 0.00, 13, 1),
       (11, 'DDR3-1600', 16.00, 20, 0.00, 13, 1),
       (12, 'DDR4-3200', 16.00, 20, 0.00, 13, 1),
       (13, 'DDR4-3200', 32.00, 20, 0.00, 1, 1),
       (14, 'DDR3-1333', 4.00, 20, 0.00, 15, 1),
       (15, 'DDR3-1333', 8.00, 20, 0.00, 15, 1),
       (16, 'DDR3-1600', 16.00, 20, 0.00, 15, 1),
       (17, 'DDR4-2400', 8.00, 20, 0.00, 16, 1),
       (18, 'DDR4-2666', 16.00, 20, 0.00, 16, 1),
       (19, 'HDD', 512.00, 20, 50.00, 2, 2),
       (20, 'HDD', 1024.00, 20, 60.00, 2, 2),
       (21, 'SSD', 256.00, 10, 70.00, 2, 2),
       (22, 'SSD', 512.00, 15, 130.00, 2, 2),
       (23, 'SSD', 1024.00, 5, 200.00, 3, 2),
       (24, 'HDD', 512.00, 20, 0.00, 17, 2),
       (25, 'SSD', 1024.00, 20, 0.00, 1, 2),
       (26, 'HDD', 1024.00, 20, 0.00, 3, 2),
       (27, 'HDD', 1024.00, 20, 0.00, 16, 2),
       (28, 'HDD', 1024.00, 20, 0.00, 17, 2),
       (29, 'SSD', 512.00, 20, 0.00, 3, 2),
       (30, 'HDD', 512.00, 20, 0.00, 16, 2),
       (31, 'HDD', 1024.00, 20, 0.00, 18, 2),
       (32, 'HDD', 512.00, 20, 0.00, 18, 2),
       (33, 'SSD', 1024.00, 20, 0.00, 3, 2),
       (34, 'SSD', 128.00, 20, 0.00, 1, 2),
       (35, 'SSD', 512.00, 20, 0.00, 1, 2),
       (36, 'SSD', 256.00, 20, 0.00, 18, 2),
       (37, 'HDD', 512.00, 20, 0.00, 1, 2),
       (38, 'SSD', 512.00, 20, 0.00, 17, 2),
       (39, 'SSD', 1024.00, 20, 0.00, 17, 2),
       (40, 'HDD', 1024.00, 20, 0.00, 1, 2),
       (41, 'SSD', 512.00, 20, 0.00, 13, 2),
       (42, 'HDD', 512.00, 20, 0.00, 3, 2),
       (43, 'SSD', 256.00, 20, 0.00, 1, 2),
       (44, '2 Core i3-8145U', 2.10, 20, 0.00, 9, 3),
       (45, '4 Core i5-8265U', 1.60, 20, 0.00, 9, 3),
       (46, '6 Core i7-8750H', 2.20, 20, 0.00, 9, 3),
       (47, '2 Core i3-7350K', 4.00, 20, 0.00, 9, 3),
       (48, '6 Core Ryzen 5 1600X', 3.50, 20, 0.00, 6, 3),
       (49, '4 Core Ryzen 3 1200', 3.20, 20, 0.00, 6, 3),
       (50, '2 Core i3-7300', 4.00, 20, 0.00, 9, 3),
       (51, '4 Core i7-7740X', 4.30, 20, 0.00, 9, 3),
       (52, '4 Core i5-7400', 3.00, 20, 0.00, 9, 3),
       (53, '4 Core Ryzen 5 1400', 3.40, 20, 0.00, 6, 3),
       (54, 'Wired Gaming RGB Keyboard', 0.00, 20, 145.99, 11, 5),
       (55, 'Wireless Gaming Keyboard', 0.00, 20, 129.99, 11, 5),
       (56, 'Wireless Keyboard', 0.00, 20, 85.00, 11, 5),
       (57, 'Wired Keyboard', 0.00, 20, 70.00, 11, 5),
       (58, 'Wireless Multimedia Keyboard', 0.00, 20, 99.99, 11, 5),
       (59, 'Wired Gaming Keyboard', 0.00, 20, 119.99, 11, 5),
       (60, 'Wired Multimedia Keyboard', 0.00, 20, 80.00, 11, 5),
       (61, 'Bluetooth Gaming RGB Keyboard', 0.00, 20, 165.99, 10, 5),
       (62, 'Wireless Gaming RGB Keyboard', 0.00, 20, 149.99, 10, 5),
       (63, 'Wireless Keyboard', 0.00, 20, 55.00, 15, 5),
       (64, 'Wired Keyboard', 0.00, 20, 30.00, 15, 5),
       (65, 'Wireless Multimedia Keyboard', 0.00, 20, 69.99, 13, 5),
       (66, 'Wired Gaming Keyboard', 0.00, 20, 129.99, 10, 5),
       (67, 'Wired Multimedia Keyboard', 0.00, 20, 35.00, 15, 5),
       (68, 'MX Vertical Mouse', 0.00, 20, 99.99, 11, 6),
       (69, 'G502 Hero Wired Gaming Mouse', 0.00, 20, 79.99, 11, 6),
       (70, 'Wirless Gaming RGB Mouse', 0.00, 20, 85.99, 10, 6),
       (71, 'Wireless Gaming 3-Button Mouse', 0.00, 20, 89.99, 10, 6),
       (72, 'Bluetooth Mouse', 0.00, 20, 35.00, 15, 6),
       (73, 'Wired Mouse', 0.00, 20, 20.00, 15, 6),
       (74, 'Wireless Mouse', 0.00, 20, 69.99, 13, 6),
       (75, 'Wired Gaming 3-Button Mouse', 0.00, 20, 79.99, 10, 6),
       (76, 'MX Master 3 Mouse', 0.00, 20, 99.99, 11, 6),
       (77, 'Wireless Mouse', 0.00, 20, 25.00, 15, 6);

--
-- Dumping data for table `order`
--


--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type`
VALUES (1, 'CREDIT_CARD'),
       (2, 'DEBIT_CARD'),
       (3, 'PAYPAL'),
       (4, 'MOPE'),
       (5, 'TRANSFER');

--
-- Dumping data for table `receipt`
--


--
-- Dumping data for table `role`
--

INSERT INTO `role`
VALUES (1, 'User'),
       (2, 'Admin');

--
-- Dumping data for table `user`
--

-- Dump completed
