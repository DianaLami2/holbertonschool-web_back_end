-- comment
-- comment 2

DELIMITER $$

DROP PROCEDURE IF EXISTS ComputeAverageScoreForUser;
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
