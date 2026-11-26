INSERT INTO customers (customer_id, customer_name, email)
VALUES
(1, 'Elie', 'elie@example.com'),
(2, 'Anthony', 'anthony@example.com'),
(3, 'Kiki', 'kiki@example.com'),
(4, 'Alexi', NULL),
(5, 'Kevin', NULL),
(6, 'Roy', 'roy@example.com');

INSERT INTO orders (order_id, customer_id, product, quantity, price, order_date)
VALUES
(1, 1, 'NBA2K', 1, 29.00, '2026-11-01'),
(2, 2, 'FIFA', 3, 12.00, '2026-11-03'),
(3, 3, 'WWE', 7, 10.00, '2026-11-04'),
(4, 4, 'FUTSAL', 4, 19.00, '2026-11-05'),
(5, 5, 'SECRET', 1, 55.00, '2026-11-06'),
(6, 6, 'FORTNITE', 2, 89.00, '2026-11-07'),
(7, 2, 'Keyboard', 1, 40.00, '2026-11-08'),
(8, 2, 'Mouse', 1, 20.00, '2026-11-10'),
(9, 1, 'Headset', 1, 35.00, '2026-11-12'),
(10, 3, 'Controller', 2, 25.00, '2026-11-13'),
(11, 4, 'Football', 1, 18.00, '2026-11-14'),
(12, 5, 'Gift Card', 1, 50.00, '2026-11-15'),
(13, 6, 'Gaming Chair', 1, 120.00, '2026-11-16'),
(14, 2, 'Monitor', 1, 180.00, '2026-11-17'),
(15, 1, 'USB Cable', 3, 5.00, '2026-11-18'),
(16, 3, 'Laptop Stand', 1, 30.00, '2026-11-19'),
(17, 2, 'Microphone', 1, 75.00, '2026-11-20'),
(18, 4, 'Shoes', 1, 60.00, '2026-11-21'),
(19, 5, 'Backpack', 1, 45.00, '2026-11-22'),
(20, 2, 'Webcam', 1, 55.00, '2026-11-23');