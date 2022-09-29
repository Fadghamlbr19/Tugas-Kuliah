-- Database TaskDML1_Fadgham Albar
USE tokoserba;

-- Menampilkan order id, customer name, product desc, dan total harga
SELECT 
o.order_ID, 
c.cust_name,
p.product_desc,
FORMAT(SUM(p.unit_price * o.quantity), 2) harga_total
FROM pvfc_order o, pvfc_cust c, pvfc_product p 
WHERE  o.cust_ID = c.cust_ID AND o.product_ID = p.product_ID
GROUP BY o.order_ID;

-- menampilkan harga total tertinggi sampai terendah
SELECT 
p.product_desc,
(o.quantity * p.unit_price) AS harga_total
FROM pvfc_order o, pvfc_product p
WHERE o.product_ID = p.product_ID
ORDER BY harga_total DESC;

-- menampilkan rata-rata dari harga total
CREATE VIEW harga_total AS
SELECT
SUM(o.quantity*p.unit_price) AS harga_total
FROM pvfc_order o, pvfc_product p
WHERE o.product_ID = p.product_ID
GROUP BY order_ID
ORDER BY order_ID;

SELECT AVG(harga_total)
FROM harga_total;

-- menampilkan jumlah order
SELECT 
COUNT(distinct order_ID) 
FROM pvfc_order;

-- menampilkan jumlah data tabel product
SELECT 
COUNT(*) 
FROM pvfc_product;