-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0;
SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;
SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE =
        'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema secs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `secs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
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
-- Table `secs`.`computer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`computer`;

CREATE TABLE IF NOT EXISTS `secs`.`computer`
(
    `id`           BIGINT(20)    NOT NULL AUTO_INCREMENT,
    `storage_type` VARCHAR(45)   NOT NULL,
    `price`        DOUBLE(19, 2) NULL DEFAULT 0,
    `config_id`    BIGINT(20)    NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_computer_ref_comp_config_idx` (`config_id` ASC) VISIBLE,
    CONSTRAINT `FK_computer_ref_comp_config`
        FOREIGN KEY (`config_id`)
            REFERENCES `secs`.`computer_config` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
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
    `balance`   DOUBLE(10, 2) NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `id_number_UNIQUE` (`id_number` ASC) VISIBLE,
    INDEX `FK_user_ref_role_idx` (`role_id` ASC) VISIBLE,
    CONSTRAINT `FK_user_ref_role`
        FOREIGN KEY (`role_id`)
            REFERENCES `secs`.`role` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
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
    `size`        DOUBLE(10, 2) NOT NULL,
    `quantity`    INT(11)       NOT NULL DEFAULT '0',
    `price`       DOUBLE(10, 2) NOT NULL DEFAULT '0',
    `brand_id`    BIGINT(20)    NOT NULL,
    `category_id` BIGINT(20)    NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_hardware_stock_ref_brand_idx` (`brand_id` ASC) VISIBLE,
    INDEX `FK_hardware_stock_ref_category_idx` (`brand_id` ASC) VISIBLE,
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
    `amount`   INT(11)    NOT NULL DEFAULT 0,
    PRIMARY KEY (`id`),
    INDEX `FK_hardware_ref_hardware_stock_idx` (`stock_id` ASC) VISIBLE,
    CONSTRAINT `FK_hardware_ref_hardware_stock`
        FOREIGN KEY (`stock_id`)
            REFERENCES `secs`.`hardware_stock` (`id`)
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
    `id`            BIGINT(20)    NOT NULL AUTO_INCREMENT,
    payment_type_id BIGINT(20)    NOT NULL,
    `customer_id`   BIGINT(20)    NOT NULL,
    `total_price`   DOUBLE(10, 2) NOT NULL DEFAULT '0',
    `delivery_date` DATE          NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_receipt_ref_customer_idx` (`customer_id` ASC) VISIBLE,
    INDEX `FK_receipt_ref_payment_type_id_idx` (payment_type_id ASC) VISIBLE,
    CONSTRAINT `FK_receipt_ref_customer`
        FOREIGN KEY (`customer_id`)
            REFERENCES `secs`.`customer` (`id`),
    CONSTRAINT `FK_receipt_ref_payment_type_id`
        FOREIGN KEY (payment_type_id)
            REFERENCES `secs`.`payment_type` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
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


-- -----------------------------------------------------
-- Table `secs`.`computer_config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`computer_config`;

CREATE TABLE IF NOT EXISTS `secs`.`computer_config`
(
    `id`           BIGINT(20) NOT NULL AUTO_INCREMENT,
    `bluetooth`    BIT(1)        DEFAULT 0,
    `thunderbolt`  BIT(1)        DEFAULT 0,
    `lte`          BIT(1)        DEFAULT 0,
    `touch_screen` BIT(1)        DEFAULT 0,
    `two_in_one`   BIT(1)        DEFAULT 0,
    `sub_total`    DOUBLE(10, 2) DEFAULT 0,
    PRIMARY KEY (`id`)
)
    ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`hardware_config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`hardware_config`;

CREATE TABLE `secs`.`hardware_config`
(
    `config_id`   BIGINT(20) NOT NULL,
    `hardware_id` BIGINT(20) NOT NULL,
    INDEX `FK_hardware_config_ref_computer_config_idx` (`config_id` ASC) VISIBLE,
    INDEX `FK_hardware_config_ref_hardware_id_idx` (`hardware_id` ASC) VISIBLE,
    CONSTRAINT `FK_hardware_config_ref_computer_config`
        FOREIGN KEY (`config_id`)
            REFERENCES `secs`.`computer_config` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION,
    CONSTRAINT `FK_hardware_config_ref_hardware_id`
        FOREIGN KEY (`hardware_id`)
            REFERENCES `secs`.`hardware` (`id`)
            ON DELETE NO ACTION
            ON UPDATE NO ACTION
)
    ENGINE = InnoDB;


SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `secs`.`brand`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Samsung');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Kingston');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'WD');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'LG');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Nvidia');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'AMD');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Asus');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Acer');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Intel');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Razer');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Logitech');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Lenovo');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Dell');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Alienware');
INSERT INTO `secs`.`brand` (`id`, `name`)
VALUES (DEFAULT, 'Generic');

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`category`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'RAM');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'STORAGE');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'CPU');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'GPU');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'KEYBOARD');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'MOUSE');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'POWER_SUPPLY');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'MONITOR');
INSERT INTO `secs`.`category` (`id`, `name`)
VALUES (DEFAULT, 'CABLE');

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`role`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`role` (`id`, `name`)
VALUES (DEFAULT, 'User');
INSERT INTO `secs`.`role` (`id`, `name`)
VALUES (DEFAULT, 'Admin');

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`hardware_stock`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'Memory', 4, 20, 30, 1, 1);
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'Memory', 8, 20, 50, 1, 1);
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'Memory', 16, 20, 75, 1, 1);
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'HDD', 512, 20, 50, 2, 2);
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'HDD', 1024, 20, 60, 2, 2);
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'SSD', 256, 10, 70, 2, 2);
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'SSD', 512, 15, 130, 2, 2);
INSERT INTO `secs`.`hardware_stock` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`, `category_id`)
VALUES (DEFAULT, 'SSD', 1024, 5, 200, 3, 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`payment_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`payment_type` (`id`, `name`)
VALUES (DEFAULT, 'CREDIT_CARD');
INSERT INTO `secs`.`payment_type` (`id`, `name`)
VALUES (DEFAULT, 'DEBIT_CARD');
INSERT INTO `secs`.`payment_type` (`id`, `name`)
VALUES (DEFAULT, 'PAYPAL');
INSERT INTO `secs`.`payment_type` (`id`, `name`)
VALUES (DEFAULT, 'MOPE');
INSERT INTO `secs`.`payment_type` (`id`, `name`)
VALUES (DEFAULT, 'TRANSFER');

COMMIT;
