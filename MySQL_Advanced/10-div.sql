--ex10 comment

DELIMITER $$

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURN FLOAT DETERMINISTIC
BEGIN
    IF b = 0 THEN
        RETURN 0;
    ELSE
        RETURN a / b;
    END IF;
END $$

DELIMITER ;
