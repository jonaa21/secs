DROP procedure IF EXISTS `p_most_sold_hardware_per_brand`;

DELIMITER $$
CREATE
    DEFINER = `secs`@`localhost` PROCEDURE `p_most_sold_hardware_per_brand`()
BEGIN
    SET @row_number = 0;

    SELECT (@`row_number` := @`row_number` + 1) AS id,
           COUNT(rc.computers_id)               AS amount,
           hs.name                              AS name,
           hs.size                              AS size,
           b.name                               AS brand,
           cat.name                             AS category
    FROM receipt_computer rc
             JOIN
         computer c ON c.id = rc.computers_id
             JOIN
         computer_config cc ON cc.id = c.config_id
             JOIN
         hardware_config hc ON hc.config_id = cc.id
             JOIN
         hardware h ON hc.hardware_id = h.id
             JOIN
         hardware_stock hs ON h.stock_id = hs.id
             JOIN
         category cat ON cat.id = hs.category_id
             JOIN
         brand b ON b.id = hs.brand_id
    GROUP BY hs.id, b.name
    ORDER BY COUNT(rc.computers_id) DESC;
END$$

DELIMITER ;
