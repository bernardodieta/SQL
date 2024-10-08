
CREATE VIEW view_user_orders AS
SELECT 
    u.id AS user_id,
    u.first_name,
    u.last_name,
    o.id AS order_id,
    o.total,
    o.delivery_status,
    p.title AS product_title,
    op.quantity,
    op.price
FROM users u
JOIN orders o ON u.id = o.customer_id
JOIN order_products op ON o.id = op.order_id
JOIN products p ON p.id = op.product_id;


CREATE VIEW view_active_offers AS
SELECT 
    p.title AS product_title,
    o.discount_percentage,
    o.start_date,
    o.end_date
FROM offers o
JOIN products p ON p.id = o.product_id
WHERE o.active = TRUE;
