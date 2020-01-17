SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE =
        'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- DROP DATABASE IF EXISTS `secs`;
CREATE SCHEMA IF NOT EXISTS `secs` DEFAULT CHARACTER SET utf8;
USE `secs`;
-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: secs
-- ------------------------------------------------------
-- Server version	8.0.18
--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;

CREATE TABLE `brand`
(
    id     bigint(20)  NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category`
(
    id     bigint(20)  NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 9
;


--
-- Table structure for table `computer`
--

DROP TABLE IF EXISTS `computer`;

CREATE TABLE `computer`
(
    id           bigint(20)  NOT NULL AUTO_INCREMENT,
    storage_type varchar(45) NOT NULL,
    price        double(19, 2) DEFAULT '0.00',
    config_id    bigint(20)  NOT NULL,
    PRIMARY KEY (id),
    KEY FK_computer_ref_comp_config_idx (config_id),
    CONSTRAINT FK_computer_ref_comp_config FOREIGN KEY (config_id) REFERENCES computer_config (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `computer_config`
--

DROP TABLE IF EXISTS `computer_config`;

CREATE TABLE `computer_config`
(
    id           bigint(20) NOT NULL AUTO_INCREMENT,
    bluetooth    bit(1)        DEFAULT b'0',
    thunderbolt  bit(1)        DEFAULT b'0',
    lte          bit(1)        DEFAULT b'0',
    touch_screen bit(1)        DEFAULT b'0',
    two_in_one   bit(1)        DEFAULT b'0',
    sub_total    double(10, 2) DEFAULT '0.00',
    PRIMARY KEY (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer`
(
    id              bigint(20)  NOT NULL AUTO_INCREMENT,
    user_id         bigint(20)  NOT NULL,
    customer_number varchar(45) NOT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY customer_number_UNIQUE (customer_number),
    KEY FK_customer_ref_person_idx (user_id),
    CONSTRAINT FK_customer_ref_user FOREIGN KEY (user_id) REFERENCES `user` (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `hardware`
--

DROP TABLE IF EXISTS `hardware`;

CREATE TABLE `hardware`
(
    id       bigint(20) NOT NULL AUTO_INCREMENT,
    stock_id bigint(20) NOT NULL,
    amount   int(11)    NOT NULL DEFAULT '0',
    PRIMARY KEY (id),
    KEY FK_hardware_ref_hardware_stock_idx (stock_id),
    CONSTRAINT FK_hardware_ref_hardware_stock FOREIGN KEY (stock_id) REFERENCES hardware_stock (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `hardware_config`
--

DROP TABLE IF EXISTS `hardware_config`;

CREATE TABLE `hardware_config`
(
    config_id   bigint(20) NOT NULL,
    hardware_id bigint(20) NOT NULL,
    KEY FK_hardware_config_ref_computer_config_idx (config_id),
    KEY FK_hardware_config_ref_hardware_id_idx (hardware_id),
    CONSTRAINT FK_hardware_config_ref_computer_config FOREIGN KEY (config_id) REFERENCES computer_config (id),
    CONSTRAINT FK_hardware_config_ref_hardware_id FOREIGN KEY (hardware_id) REFERENCES hardware (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `hardware_stock`
--

DROP TABLE IF EXISTS `hardware_stock`;

CREATE TABLE `hardware_stock`
(
    id          bigint(20)    NOT NULL AUTO_INCREMENT,
    `name`      varchar(45)   NOT NULL,
    size        double(10, 2) NOT NULL DEFAULT '0.00',
    quantity    int(11)       NOT NULL DEFAULT '0',
    price       double(10, 2) NOT NULL DEFAULT '0.00',
    brand_id    bigint(20)    NOT NULL,
    category_id bigint(20)    NOT NULL,
    PRIMARY KEY (id),
    KEY FK_hardware_stock_ref_brand_idx (brand_id),
    KEY FK_hardware_stock_ref_category_idx (brand_id),
    KEY FK_hardware_stock_ref_category (category_id),
    CONSTRAINT FK_hardware_stock_ref_brand FOREIGN KEY (brand_id) REFERENCES brand (id),
    CONSTRAINT FK_hardware_stock_ref_category FOREIGN KEY (category_id) REFERENCES category (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 78
;


--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order`
(
    computer_id bigint(20) NOT NULL,
    receipt_id  bigint(20) NOT NULL,
    KEY FK_order_ref_receipt_idx (receipt_id),
    KEY FK_order_ref_computer_idx (computer_id),
    CONSTRAINT FK_order_ref_computer FOREIGN KEY (computer_id) REFERENCES computer (id),
    CONSTRAINT FK_order_ref_receipt FOREIGN KEY (receipt_id) REFERENCES receipt (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;

CREATE TABLE `payment_type`
(
    id     bigint(20)  NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 6
;


--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;

CREATE TABLE `receipt`
(
    id              bigint(20)    NOT NULL AUTO_INCREMENT,
    payment_type_id bigint(20)    NOT NULL,
    customer_id     bigint(20)    NOT NULL,
    total_price     double(10, 2) NOT NULL DEFAULT '0.00',
    delivery_date   date          NOT NULL,
    PRIMARY KEY (id),
    KEY FK_receipt_ref_customer_idx (customer_id),
    KEY FK_receipt_ref_payment_type_id_idx (payment_type_id),
    CONSTRAINT FK_receipt_ref_customer FOREIGN KEY (customer_id) REFERENCES customer (id),
    CONSTRAINT FK_receipt_ref_payment_type_id FOREIGN KEY (payment_type_id) REFERENCES payment_type (id)
) ENGINE = InnoDB
;


--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role`
(
    id     bigint(20)  NOT NULL AUTO_INCREMENT,
    `name` varchar(45) NOT NULL,
    PRIMARY KEY (id)
) ENGINE = InnoDB
  AUTO_INCREMENT = 3
;


--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user`
(
    id        bigint(20)  NOT NULL AUTO_INCREMENT,
    firstname varchar(45) NOT NULL,
    lastname  varchar(45) NOT NULL,
    id_number varchar(45) NOT NULL,
    role_id   bigint(20)  NOT NULL,
    balance   double(10, 2) DEFAULT '0.00',
    PRIMARY KEY (id),
    UNIQUE KEY id_number_UNIQUE (id_number),
    KEY FK_user_ref_role_idx (role_id),
    CONSTRAINT FK_user_ref_role FOREIGN KEY (role_id) REFERENCES role (id)
) ENGINE = InnoDB
;

/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2020-01-16 22:48:13
