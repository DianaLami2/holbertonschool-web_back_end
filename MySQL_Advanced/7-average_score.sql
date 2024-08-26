-- comment
-- comment 2

DELIMITER $$

CREATE PROCEDURE ComputeAverageScoreForUser (IN user_id INT)

BEGIN
    UPDATE users
    SET
        avarage_user = (
            SELECT AVG (score) FROM corrections 
            WHERE corrections.user_id = user_id
        )
    WHERE id = user_id
END $$

DELIMITER ;
