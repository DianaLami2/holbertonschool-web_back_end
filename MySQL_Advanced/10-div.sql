--ex10 comment

DELIMITER //


DROP FUNCTION IF EXISTS SafeDiv;

CREATE FUNCTION SafeDiV (a INT, b INT)
RETURN FLOAT DETERMINISTIC
BEGIN
    RETURN(IF(b=0,0,a/b));
END //

DELIMITER ;
