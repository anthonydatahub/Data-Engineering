select  *
from orders
where customer_id = '2' 
ORDER BY order_date DESC;

"order_id"	"customer_id"	"product"	"quantity"	"price"	"order_date"
20	2	"Webcam"	1	55.00	"2026-11-23"
17	2	"Microphone"	1	75.00	"2026-11-20"
14	2	"Monitor"	1	180.00	"2026-11-17"
8	2	"Mouse"	1	20.00	"2026-11-10"
7	2	"Keyboard"	1	40.00	"2026-11-08"
2	2	"FIFA"	3	12.00	"2026-11-03"

SELECT *
FROM customers 
where customer_name='Anthony';

"customer_id"	"customer_name"	"email"
2	"Anthony"	"anthony@example.com"


SELECT
    c.customer_name,
    c.customer_id,
    o.price
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id;

"customer_name"	"customer_id"	"price"
"Elie"	1	29.00
"Anthony"	2	12.00
"Kiki"	3	10.00
"Alexi"	4	19.00
"Kevin"	5	55.00
"Roy"	6	89.00
"Anthony"	2	40.00
"Anthony"	2	20.00
"Elie"	1	35.00
"Kiki"	3	25.00
"Alexi"	4	18.00
"Kevin"	5	50.00
"Roy"	6	120.00
"Anthony"	2	180.00
"Elie"	1	5.00
"Kiki"	3	30.00
"Anthony"	2	75.00
"Alexi"	4	60.00
"Kevin"	5	45.00
"Anthony"	2	55.00


SELECT
    order_date,
    COUNT(customer_id) AS total_orders
FROM orders
WHERE order_date > '2026-11-19'
GROUP BY order_date;

"order_date"	"total_orders"
"2026-11-22"	1
"2026-11-21"	1
"2026-11-20"	1
"2026-11-23"	1