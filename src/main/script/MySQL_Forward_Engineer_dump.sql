-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE =
        'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema secs
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `secs`;

-- -----------------------------------------------------
-- Schema secs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `secs` DEFAULT CHARACTER SET utf8;
USE `secs`;

-- -----------------------------------------------------
-- Table `secs`.`brand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`brand`;

CREATE TABLE IF NOT EXISTS `secs`.`brand`
(
    `id`   BIGINT(20)  NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`category`;

CREATE TABLE IF NOT EXISTS `secs`.`category`
(
    `id`   BIGINT(20)  NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`computer_config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`computer_config`;

CREATE TABLE IF NOT EXISTS `secs`.`computer_config`
(
    `id`           BIGINT(20)    NOT NULL AUTO_INCREMENT,
    `bluetooth`    BIT(1)        NULL DEFAULT b'0',
    `thunderbolt`  BIT(1)        NULL DEFAULT b'0',
    `lte`          BIT(1)        NULL DEFAULT b'0',
    `touch_screen` BIT(1)        NULL DEFAULT b'0',
    `two_in_one`   BIT(1)        NULL DEFAULT b'0',
    `sub_total`    DOUBLE(10, 2) NULL DEFAULT '0.00',
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`computer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`computer`;

CREATE TABLE IF NOT EXISTS `secs`.`computer`
(
    `id`           BIGINT(20)    NOT NULL AUTO_INCREMENT,
    `storage_type` VARCHAR(45)   NOT NULL,
    `price`        DOUBLE(19, 2) NULL DEFAULT '0.00',
    `config_id`    BIGINT(20)    NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_computer_ref_comp_config_idx` (`config_id` ASC) VISIBLE,
    CONSTRAINT `FK_computer_ref_comp_config`
        FOREIGN KEY (`config_id`)
            REFERENCES `secs`.`computer_config` (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`role`;

CREATE TABLE IF NOT EXISTS `secs`.`role`
(
    `id`   BIGINT(20)  NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`user`;

CREATE TABLE IF NOT EXISTS `secs`.`user`
(
    `id`        BIGINT(20)    NOT NULL AUTO_INCREMENT,
    `firstname` VARCHAR(45)   NOT NULL,
    `lastname`  VARCHAR(45)   NOT NULL,
    `id_number` VARCHAR(45)   NOT NULL,
    `role_id`   BIGINT(20)    NOT NULL,
    `balance`   DOUBLE(10, 2) NULL DEFAULT '0.00',
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_number_UNIQUE` (`id_number` ASC) VISIBLE,
    INDEX `FK_user_ref_role_idx` (`role_id` ASC) VISIBLE,
    CONSTRAINT `FK_user_ref_role`
        FOREIGN KEY (`role_id`)
            REFERENCES `secs`.`role` (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`customer`;

CREATE TABLE IF NOT EXISTS `secs`.`customer`
(
    `id`              BIGINT(20)  NOT NULL AUTO_INCREMENT,
    `user_id`         BIGINT(20)  NOT NULL,
    `customer_number` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `customer_number_UNIQUE` (`customer_number` ASC) VISIBLE,
    INDEX `FK_customer_ref_person_idx` (`user_id` ASC) VISIBLE,
    CONSTRAINT `FK_customer_ref_user`
        FOREIGN KEY (`user_id`)
            REFERENCES `secs`.`user` (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`hardware_stock`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`hardware_stock`;

CREATE TABLE IF NOT EXISTS `secs`.`hardware_stock`
(
    `id`          BIGINT(20)    NOT NULL AUTO_INCREMENT,
    `name`        VARCHAR(45)   NOT NULL,
    `size`        DOUBLE(10, 2) NOT NULL DEFAULT '0.00',
    `quantity`    INT(11)       NOT NULL DEFAULT '0',
    `price`       DOUBLE(10, 2) NOT NULL DEFAULT '0.00',
    `brand_id`    BIGINT(20)    NOT NULL,
    `category_id` BIGINT(20)    NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_hardware_stock_ref_brand_idx` (`brand_id` ASC) VISIBLE,
    INDEX `FK_hardware_stock_ref_category_idx` (`brand_id` ASC) VISIBLE,
    INDEX `FK_hardware_stock_ref_category` (`category_id` ASC) VISIBLE,
    CONSTRAINT `FK_hardware_stock_ref_brand`
        FOREIGN KEY (`brand_id`)
            REFERENCES `secs`.`brand` (`id`),
    CONSTRAINT `FK_hardware_stock_ref_category`
        FOREIGN KEY (`category_id`)
            REFERENCES `secs`.`category` (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`hardware`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`hardware`;

CREATE TABLE IF NOT EXISTS `secs`.`hardware`
(
    `id`       BIGINT(20) NOT NULL AUTO_INCREMENT,
    `stock_id` BIGINT(20) NOT NULL,
    `amount`   INT(11)    NOT NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    INDEX `FK_hardware_ref_hardware_stock_idx` (`stock_id` ASC) VISIBLE,
    CONSTRAINT `FK_hardware_ref_hardware_stock`
        FOREIGN KEY (`stock_id`)
            REFERENCES `secs`.`hardware_stock` (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`hardware_config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`hardware_config`;

CREATE TABLE IF NOT EXISTS `secs`.`hardware_config`
(
    `config_id`   BIGINT(20) NOT NULL,
    `hardware_id` BIGINT(20) NOT NULL,
    INDEX `FK_hardware_config_ref_computer_config_idx` (`config_id` ASC) VISIBLE,
    INDEX `FK_hardware_config_ref_hardware_id_idx` (`hardware_id` ASC) VISIBLE,
    CONSTRAINT `FK_hardware_config_ref_computer_config`
        FOREIGN KEY (`config_id`)
            REFERENCES `secs`.`computer_config` (`id`),
    CONSTRAINT `FK_hardware_config_ref_hardware_id`
        FOREIGN KEY (`hardware_id`)
            REFERENCES `secs`.`hardware` (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`payment_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`payment_type`;

CREATE TABLE IF NOT EXISTS `secs`.`payment_type`
(
    `id`   BIGINT(20)  NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`receipt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`receipt`;

CREATE TABLE IF NOT EXISTS `secs`.`receipt`
(
    `id`              BIGINT(20)    NOT NULL AUTO_INCREMENT,
    `payment_type_id` BIGINT(20)    NOT NULL,
    `customer_id`     BIGINT(20)    NOT NULL,
    `total_price`     DOUBLE(10, 2) NOT NULL DEFAULT '0.00',
    `delivery_date`   DATE          NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_receipt_ref_customer_idx` (`customer_id` ASC) VISIBLE,
    INDEX `FK_receipt_ref_payment_type_id_idx` (`payment_type_id` ASC) VISIBLE,
    CONSTRAINT `FK_receipt_ref_customer`
        FOREIGN KEY (`customer_id`)
            REFERENCES `secs`.`customer` (`id`),
    CONSTRAINT `FK_receipt_ref_payment_type_id`
        FOREIGN KEY (`payment_type_id`)
            REFERENCES `secs`.`payment_type` (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`order`;

CREATE TABLE IF NOT EXISTS `secs`.`order`
(
    `computer_id` BIGINT(20) NOT NULL,
    `receipt_id`  BIGINT(20) NOT NULL,
    INDEX `FK_order_ref_receipt_idx` (`receipt_id` ASC) VISIBLE,
    INDEX `FK_order_ref_computer_idx` (`computer_id` ASC) VISIBLE,
    CONSTRAINT `FK_order_ref_computer`
        FOREIGN KEY (`computer_id`)
            REFERENCES `secs`.`computer` (`id`),
    CONSTRAINT `FK_order_ref_receipt`
        FOREIGN KEY (`receipt_id`)
            REFERENCES `secs`.`receipt` (`id`)
)
    ENGINE = InnoDB;


SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;
-- begin attached script 'script'
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


-- end attached script 'script'
