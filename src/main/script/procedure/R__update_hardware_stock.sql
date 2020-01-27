DROP procedure IF EXISTS secs.p_update_hardware_stock;

DELIMITER $$
CREATE
    DEFINER = `secs`@`localhost` PROCEDURE secs.p_update_hardware_stock(IN hardware_stock_id BIGINT,
                                                                        IN hardware_amount INT(11))
BEGIN
    IF (SELECT `quantity`
        FROM hardware_stock
        WHERE `id` = hardware_stock_id
          AND `quantity` > 0
          AND `quantity` - hardware_amount > 0) > 0
    THEN
        UPDATE `secs`.`hardware_stock` SET `quantity` = `quantity` - hardware_amount WHERE `id` = hardware_stock_id;
    END IF;
END
$$

DELIMITER ;
