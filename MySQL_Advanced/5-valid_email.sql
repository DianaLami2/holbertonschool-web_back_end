-- Create a trigger that resets valid_email only when email is changed
DELIMITER //

CREATE TRIGGER reset_valid_email_on_email_change
BEFORE UPDATE ON users
FOR EACH ROW
BEGIN
    -- Check if the email has been changed
    IF NEW.email != OLD.email THEN
        -- Reset valid_email to 0
        SET NEW.valid_email = 0;
    END IF;
END //

DELIMITER ;
