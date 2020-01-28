USE `secs`;

ALTER TABLE `secs`.`receipt`
    ADD COLUMN `date_created` DATETIME DEFAULT CURRENT_TIMESTAMP AFTER `receipt_status`;