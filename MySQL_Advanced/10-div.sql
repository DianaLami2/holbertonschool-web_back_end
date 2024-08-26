--COMMENT EX10
DELIMITER //

CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS INT
BEGIN
    DECLARE result INT;
    
    IF b = 0 THEN
        SET result = 0;
    ELSE
        SET result = a DIV b;
    END IF;
    
    RETURN result;
END;
//

DELIMITER ;
