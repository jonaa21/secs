-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema secs
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `secs` ;

-- -----------------------------------------------------
-- Schema secs
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `secs` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `secs` ;

-- -----------------------------------------------------
-- Table `secs`.`brand`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`brand` ;

CREATE TABLE IF NOT EXISTS `secs`.`brand` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`category` ;

CREATE TABLE IF NOT EXISTS `secs`.`category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`computer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`computer` ;

CREATE TABLE IF NOT EXISTS `secs`.`computer` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `storage_type` VARCHAR(45) NOT NULL,
  `price` DECIMAL NULL DEFAULT 0,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`role` ;

CREATE TABLE IF NOT EXISTS `secs`.`role` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`user` ;

CREATE TABLE IF NOT EXISTS `secs`.`user` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `id_number` VARCHAR(45) NOT NULL,
  `role_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_number_UNIQUE` (`id_number` ASC) VISIBLE,
  INDEX `FK_user_ref_role_idx` (`role_id` ASC) VISIBLE,
  CONSTRAINT `FK_user_ref_role`
    FOREIGN KEY (`role_id`)
    REFERENCES `secs`.`role` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`customer` ;

CREATE TABLE IF NOT EXISTS `secs`.`customer` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `user_id` BIGINT(20) NOT NULL,
  `customer_number` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `customer_number_UNIQUE` (`customer_number` ASC) VISIBLE,
  INDEX `FK_customer_ref_person_idx` (`user_id` ASC) VISIBLE,
  CONSTRAINT `FK_customer_ref_user`
    FOREIGN KEY (`user_id`)
    REFERENCES `secs`.`user` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`hardware`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`hardware` ;

CREATE TABLE IF NOT EXISTS `secs`.`hardware` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `size` INT(11) NOT NULL,
  `quantity` INT(11) NOT NULL DEFAULT '0',
  `price` DECIMAL(10,0) NOT NULL DEFAULT '0',
  `brand_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_product_ref_brand_idx` (`brand_id` ASC) VISIBLE,
  CONSTRAINT `FK_product_ref_brand`
    FOREIGN KEY (`brand_id`)
    REFERENCES `secs`.`brand` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`hardware_category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`hardware_category` ;

CREATE TABLE IF NOT EXISTS `secs`.`hardware_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `hardware_id` BIGINT(20) NOT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_prod_cat_ref_prod_idx` (`hardware_id` ASC) VISIBLE,
  INDEX `FK_prod_cat_ref_category_idx` (`category_id` ASC) VISIBLE,
  CONSTRAINT `FK_hardware_cat_ref_category`
    FOREIGN KEY (`category_id`)
    REFERENCES `secs`.`category` (`id`),
  CONSTRAINT `FK_hardware_cat_ref_product`
    FOREIGN KEY (`hardware_id`)
    REFERENCES `secs`.`hardware` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`payment_type`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`payment_type` ;

CREATE TABLE IF NOT EXISTS `secs`.`payment_type` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `secs`.`receipt`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`receipt` ;

CREATE TABLE IF NOT EXISTS `secs`.`receipt` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `payment_type_id` BIGINT NOT NULL,
  `customer_id` BIGINT(20) NOT NULL,
  `delivery_date` DATE NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `FK_receipt_ref_customer_idx` (`customer_id` ASC) VISIBLE,
  INDEX `FK_receipt_ref_payment_type_id_idx` (`payment_type_id` ASC) VISIBLE,
  CONSTRAINT `FK_receipt_ref_customer`
    FOREIGN KEY (`customer_id`)
    REFERENCES `secs`.`customer` (`id`),
  CONSTRAINT `FK_receipt_ref_payment_type_id`
    FOREIGN KEY (`payment_type_id`)
    REFERENCES `secs`.`payment_type` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`order` ;

CREATE TABLE IF NOT EXISTS `secs`.`order` (
  `computer_id` BIGINT(20) NOT NULL,
  `receipt_id` BIGINT(20) NOT NULL,
  INDEX `FK_order_ref_receipt_idx` (`receipt_id` ASC) VISIBLE,
  INDEX `FK_order_ref_computer_idx` (`computer_id` ASC) VISIBLE,
  CONSTRAINT `FK_order_ref_computer`
    FOREIGN KEY (`computer_id`)
    REFERENCES `secs`.`computer` (`id`),
  CONSTRAINT `FK_order_ref_receipt`
    FOREIGN KEY (`receipt_id`)
    REFERENCES `secs`.`receipt` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `secs`.`hardware_config`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `secs`.`hardware_config` ;

CREATE TABLE IF NOT EXISTS `secs`.`hardware_config` (
  `hardware_id` BIGINT NOT NULL,
  `amount` INT NOT NULL,
  `computer_id` BIGINT NOT NULL,
  INDEX `FK_hardware_config_ref_hardware_idx` (`hardware_id` ASC) VISIBLE,
  INDEX `FK_hardware_config_ref_computer_idx` (`computer_id` ASC) VISIBLE,
  CONSTRAINT `FK_hardware_config_ref_hardware`
    FOREIGN KEY (`hardware_id`)
    REFERENCES `secs`.`hardware` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_hardware_config_ref_computer`
    FOREIGN KEY (`computer_id`)
    REFERENCES `secs`.`computer` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `secs`.`brand`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Samsung');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Kingston');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'WD');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'LG');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Nvidia');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'AMD');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Asus');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Acer');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Intel');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Razer');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Logitech');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Lenovo');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Dell');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Alienware');
INSERT INTO `secs`.`brand` (`id`, `name`) VALUES (DEFAULT, 'Generic');

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`category`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`category` (`id`, `name`) VALUES (DEFAULT, 'RAM');
INSERT INTO `secs`.`category` (`id`, `name`) VALUES (DEFAULT, 'Storage');
INSERT INTO `secs`.`category` (`id`, `name`) VALUES (DEFAULT, 'CPU');
INSERT INTO `secs`.`category` (`id`, `name`) VALUES (DEFAULT, 'GPU');
INSERT INTO `secs`.`category` (`id`, `name`) VALUES (DEFAULT, 'Keyboards');
INSERT INTO `secs`.`category` (`id`, `name`) VALUES (DEFAULT, 'Mice');
INSERT INTO `secs`.`category` (`id`, `name`) VALUES (DEFAULT, 'PSU');

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`role`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`role` (`id`, `name`) VALUES (DEFAULT, 'User');
INSERT INTO `secs`.`role` (`id`, `name`) VALUES (DEFAULT, 'Admin');

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`hardware`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'Memory', 4, 20, 30, 1);
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'Memory', 8, 20, 50, 1);
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'Memory', 16, 20, 75, 1);
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'HDD', 512, 20, 50, 2);
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'HDD', 1024, 20, 60, 2);
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'SSD', 256, 10, 70, 2);
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'SSD', 512, 15, 130, 2);
INSERT INTO `secs`.`hardware` (`id`, `name`, `size`, `quantity`, `price`, `brand_id`) VALUES (DEFAULT, 'SSD', 1024, 5, 200, 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `secs`.`payment_type`
-- -----------------------------------------------------
START TRANSACTION;
USE `secs`;
INSERT INTO `secs`.`payment_type` (`id`, `name`) VALUES (DEFAULT, 'CREDIT_CARD');
INSERT INTO `secs`.`payment_type` (`id`, `name`) VALUES (DEFAULT, 'DEBIT_CARD');
INSERT INTO `secs`.`payment_type` (`id`, `name`) VALUES (DEFAULT, 'PAYPAL');
INSERT INTO `secs`.`payment_type` (`id`, `name`) VALUES (DEFAULT, 'MOPE');
INSERT INTO `secs`.`payment_type` (`id`, `name`) VALUES (DEFAULT, 'TRANSFER');

COMMIT;

