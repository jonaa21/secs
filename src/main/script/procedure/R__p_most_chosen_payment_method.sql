USE `secs`;

DROP procedure IF EXISTS `p_most_chosen_payment_method`;

DELIMITER $$
CREATE
    DEFINER = `secs`@`localhost` PROCEDURE `p_most_chosen_payment_method`()
BEGIN
    SET @row_number = 0;

    SELECT (@`row_number` := @`row_number` + 1) AS id,
           count(pt.id)                         AS amount,
           pt.name                              AS payment_name
    FROM receipt r
             JOIN payment_type pt ON pt.id = r.payment_type_id
    GROUP BY pt.name
    ORDER BY count(pt.id) DESC;
END
