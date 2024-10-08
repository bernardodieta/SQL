DELIMITER $$

CREATE FUNCTION fn_user_full_name(user_id INT) 
RETURNS VARCHAR(255)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE full_name VARCHAR(255);
    SELECT CONCAT(first_name, ' ', last_name) INTO full_name
    FROM users
    WHERE id = user_id;
    RETURN full_name;
END$$

DELIMITER ;
