CREATE DATABASE tokoserba;
USE tokoserba;

CREATE TABLE IF NOT EXISTS pvfc_product(
product_ID INT NOT NULL,
product_desc TEXT,
finish TEXT,
unit_price INT NOT NULL DEFAULT 0,
PRIMARY KEY (product_ID)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pvfc_cust(
cust_ID INT NOT NULL,
cust_name TEXT,
cust_address TEXT,
PRIMARY KEY (cust_ID)
) ENGINE=INNODB;

CREATE TABLE IF NOT EXISTS pvfc_order(
order_ID INT NOT NULL,
order_date DATE,
cust_ID INT NOT NULL,
product_ID INT NOT NULL,
quantity INT NOT NULL,
extended_price INT NOT NULL,
total INT NOT NULL,
PRIMARY KEY (order_ID),
FOREIGN KEY (cust_ID) REFERENCES pvfc_cust(cust_ID),
FOREIGN KEY (product_ID) REFERENCES pvfc_product(product_ID)
) ENGINE=INNODB;

INSERT INTO pvfc_product(product_ID, product_desc, finish, unit_price)
VALUES
(1, 'Chair', 'White', 150),
(2, 'Table', 'Natural Oak', 400),
(4, 'Entertainment Center', 'Natural Maple', 650),
(5, 'Writers Desk', 'Cherry', 325),
(7, 'Dining Table', 'Natural Ash', 800),
(3, 'Bed', 'Light Wood', 1500),
(6, 'Chandelier', 'Steel', 2000),
(8, 'Children Tent', 'Yellow Red', 300),
(9, 'Reflexology Chair', 'Black', 1000),
(10, 'Dining Chair', 'Natural Ash', 300),
(11, 'Kitchen Set', 'White', 2000),
(12, 'Pan', 'Stainless Steel', 200),
(13, 'Wardorbe', 'Shining Black', 750),
(14, 'Feet Rest', 'White', 50),
(15, 'Pillow', 'White', 75);

INSERT INTO pvfc_cust(cust_ID, cust_name, cust_address)
VALUES
(1, 'Uninformee', 'DKI Jakarta'),
(2, 'Value Furniture', '15145 S.W. 17th St.Plano TX 750'),
(3, 'AB Software', 'Bandung'),
(4, 'AKIE', 'Stockholm'),
(5, 'Mentor Sekolah', 'DIY Yogyakarta'),
(6, 'Bang Pamungkas', 'DKI Jakarta'),
(7, 'SIU Speed', 'New York'),
(8, 'King Maggy', 'Manchester'),
(9, 'Wait Martin', 'Oslo'),
(10, 'Blocking III Williams', 'Boston'),
(11, 'Jimmy Buckets', 'Miami'),
(12, 'Bam Posterize', 'Miami'),
(13, 'Curry Threes', 'California'),
(14, 'King James', 'California'),
(15, 'JTJB', 'Boston');

INSERT INTO 
pvfc_order(order_ID, order_date,cust_ID,product_ID,quantity ,extended_price, total)
VALUES
(1006, '2006-10-24',2 ,7 ,2, 1600 , 3200),
(1046, '2006-10-24',1 ,2 , 2, 800 , 800),
(1236, '2006-10-24',4 ,4 , 2, 650 , 1300),
(1016, '2006-10-24',5 ,2 , 1, 400 , 400),
(1406, '2006-10-24',3 ,1 , 2, 300 , 300),
(1704, '2022-06-16', 13, 3, 2, 1500, 3000),
(1703, '2020-10-24', 6, 6, 1, 2000 , 2000),
(1542, '2010-10-24',7 ,8 , 2, 300 , 600),
(1432, '2008-12-31',8 ,9 , 1, 1000 , 1000),
(1689, '2012-12-2',9 ,10 , 2, 300 , 600),
(1616, '2012-2-21',10 ,11 ,1, 2000 , 2000),
(1717, current_date,11, 12, 2, 200 , 400),
(1718, current_date,12,13, 2, 750 , 1500),
(1512, '2010-1-24',14 ,14 , 1, 50 , 50),
(1578, '2011-12-23',15 ,15, 2, 75 , 150);

SELECT * FROM pvfc_product
ORDER BY product_ID;
SELECT * FROM pvfc_cust
ORDER BY cust_ID;
SELECT * FROM pvfc_order
ORDER BY order_ID;
