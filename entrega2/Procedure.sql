DELIMITER //

CREATE PROCEDURE sp_activate_offer(IN offer_id INT)
BEGIN
    UPDATE offers 
    SET active = TRUE 
    WHERE id = offer_id 
    AND start_date <= NOW() 
    AND end_date >= NOW();
END //

DELIMITER ;
