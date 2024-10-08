DELIMITER $$
CREATE FUNCTION fn_calculate_order_total(order_id INT) 
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
    DECLARE total DECIMAL(10,2);

    SELECT SUM(price * quantity) INTO total
    FROM order_products
    WHERE order_products.order_id = order_id;

    RETURN IFNULL(total, 0);

END $$
DELIMITER ;

