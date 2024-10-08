
INSERT INTO users (first_name, last_name, date, tel, email, password, role, cart_id)
VALUES 
('John', 'Doe', '1990-01-01', 5551234567, 'john.doe@example.com', 'password123', 'customer', NULL),
('Jane', 'Smith', '1985-05-05', 5559876543, 'jane.smith@example.com', 'password456', 'admin', NULL);

INSERT INTO addresses (user_id, country, state, city, zipcode, address_text, numext, numint)
VALUES 
(1, 'USA', 'California', 'Los Angeles', 90001, '123 Main St', 100, 'A'),
(2, 'USA', 'New York', 'New York', 10001, '456 Broadway', 200, 'B');

INSERT INTO categories (category)
VALUES 
('Electronics'), 
('Home Appliances'), 
('Gaming'), 
('Mobile Devices');


INSERT INTO contentPromo (header_img, header_text, promo_img, promo_text)
VALUES 
('/images/promo1.jpg', 'Big Sale', '/images/promo_detail1.jpg', 'Up to 50% off'),
('/images/promo2.jpg', 'Limited Offer', '/images/promo_detail2.jpg', 'Discount on all items');


INSERT INTO products (title, description, stock, price, category_id, brand, model, color, gamer, battery, garantia, botones, iluminacion, bluetooth, recargable, conector, sistema, resolution)
VALUES 
('Gaming Mouse', 'High precision gaming mouse with RGB lighting', 50, 49.99, 3, 'Logitech', 'G502', 'Black', 'Yes', 'Rechargeable', '1 year', '6 buttons', 'RGB', 'Yes', 'Yes', 'USB', 'Windows/Mac', '16000 DPI'),
('Smartphone', 'Latest model smartphone with 5G support', 100, 699.99, 4, 'Samsung', 'Galaxy S21', 'Silver', 'No', '4000mAh', '2 years', 'No', 'No', 'Yes', 'USB-C', 'Android', '1080p');


INSERT INTO product_images (product_id, image_url)
VALUES 
(1, '/images/mouse.jpg'),
(2, '/images/smartphone.jpg');

INSERT INTO offers (product_id, discount_percentage, start_date, end_date, active)
VALUES 
(1, 10.00, '2024-09-01 00:00:00', '2024-09-30 23:59:59', TRUE),
(2, 15.00, '2024-09-01 00:00:00', '2024-09-15 23:59:59', FALSE);


INSERT INTO questionProducts (content, user_id, product_id)
VALUES 
('Does this mouse work with Mac?', 1, 1),
('Is this phone water-resistant?', 2, 2);


INSERT INTO orders (customer_id, email, total, delivery_status, payment_status)
VALUES 
(1, 'john.doe@example.com', 109.99, 'Pendiente', 'Completado'),
(2, 'jane.smith@example.com', 799.99, 'Entregada', 'Completado');


INSERT INTO order_products (order_id, product_id, quantity, price, total)
VALUES 
(1, 1, 1, 49.99, 49.99),
(2, 2, 1, 699.99, 699.99);


INSERT INTO notifications (user_id, type, message)
VALUES 
(1, 'Order Confirmation', 'Your order has been confirmed'),
(2, 'Shipping Update', 'Your order has been shipped');


INSERT INTO user_product_visits (user_id, product_id)
VALUES 
(1, 1),
(2, 2);
