DROP procedure IF EXISTS secs.p_receipt_per_quarter_over_year;

DELIMITER $$
CREATE
    DEFINER = `secs`@`localhost` PROCEDURE secs.p_receipt_per_quarter_over_year(IN provided_year INT)

BEGIN
    SET @row_number = 0;

    SELECT (@`row_number`:=@`row_number` + 1) as id,
           COUNT(id)             as aantal,
           YEAR(date_created)    as year,
           QUARTER(date_created) as quarter
    FROM receipt
    WHERE YEAR(date_created) = provided_year
    GROUP BY YEAR(date_created), QUARTER(date_created)
    ORDER BY YEAR(date_created), QUARTER(date_created);
END;
$$

DELIMITER ;
