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
    `user_name`       VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `user_name_UNIQUE` (`user_name` ASC) VISIBLE,
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
    `id`            BIGINT(20)    NOT NULL AUTO_INCREMENT,
    `name`          VARCHAR(45)   NOT NULL,
    `size`          DOUBLE(10, 2) NOT NULL DEFAULT '0.00',
    `quantity`      INT(11)       NOT NULL DEFAULT '0',
    `price`         DOUBLE(10, 2) NOT NULL DEFAULT '0.00',
    `unit`          VARCHAR(45)   NULL     DEFAULT NULL,
    `spec_level_id` BIGINT(20)    NOT NULL,
    `brand_id`      BIGINT(20)    NOT NULL,
    `category_id`   BIGINT(20)    NOT NULL,
    PRIMARY KEY (`id`),
    INDEX `FK_hardware_stock_ref_brand_idx` (`brand_id` ASC) VISIBLE,
    INDEX `FK_hardware_stock_ref_category_idx` (`brand_id` ASC) VISIBLE,
    INDEX `FK_hardware_stock_ref_category` (`category_id` ASC) VISIBLE,
    INDEX `FK_hardware_stock_ref_spec_level_idx` (`spec_level_id` ASC) VISIBLE,
    CONSTRAINT `FK_hardware_stock_ref_brand`
        FOREIGN KEY (`brand_id`)
            REFERENCES `secs`.`brand` (`id`),
    CONSTRAINT `FK_hardware_stock_ref_category`
        FOREIGN KEY (`category_id`)
            REFERENCES `secs`.`category` (`id`),
    CONSTRAINT `FK_hardware_stock_ref_spec_level`
        FOREIGN KEY (`spec_level_id`)
            REFERENCES `secs`.`spec_level` (`id`)
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
    `receipt_status`  VARCHAR(45)   NOT NULL DEFAULT 'NEW',
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

-- -----------------------------------------------------
-- Table `secs`.`flyway_schema_history`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`flyway_schema_history`;

CREATE TABLE IF NOT EXISTS `flyway_schema_history`
(
    `installed_rank` INT(11)       NOT NULL,
    `version`        VARCHAR(50)            DEFAULT NULL,
    `description`    VARCHAR(200)  NOT NULL,
    `type`           VARCHAR(20)   NOT NULL,
    `script`         VARCHAR(1000) NOT NULL,
    `checksum`       INT(11)                DEFAULT NULL,
    `installed_by`   VARCHAR(100)  NOT NULL,
    `installed_on`   timestamp     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `execution_time` INT(11)       NOT NULL,
    `success`        TINYINT(1)    NOT NULL,
    PRIMARY KEY (`installed_rank`),
    KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8;


-- -----------------------------------------------------
-- Table `secs`.`spec_level`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`spec_level`;

CREATE TABLE IF NOT EXISTS `secs`.`spec_level`
(
    `id`          BIGINT(20)  NOT NULL AUTO_INCREMENT,
    `spec_status` VARCHAR(45) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE INDEX `spec_status_UNIQUE` (`spec_status` ASC) VISIBLE
)
    ENGINE = InnoDB;


SET SQL_MODE = @OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS;