CREATE DATABASE tokoserba;
USE tokoserba;

CREATE TABLE IF NOT EXISTS pvfc_product(
product_ID INT NOT NULL,
product_desc TEXT,
finish TEXT,
unit_price INT NOT NULL DEFAULT 0,
PRIMARY KEY (product_ID)
) ENGINE=INNODB;

DESC pvfc_product;

CREATE TABLE IF NOT EXISTS pvfc_cust(
cust_ID INT NOT NULL,
cust_name TEXT,
cust_address TEXT,
PRIMARY KEY (cust_ID)
) ENGINE=INNODB;

DESC pvfc_cust;

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

DESC pvfc_order;
INSERT INTO pvfc_product(product_ID, product_desc, finish, unit_price)
VALUES
(1, 'Chair', 'White', 150),
(2, 'Table', 'Natural Oak', 400),
(4, 'Entertainment Center', 'Natural Maple', 650),
(5, 'Writers Desk', 'Cherry', 325),
(7, 'Dining Table', 'Natural Ash', 800);

SELECT * FROM pvfc_product;

INSERT INTO pvfc_cust(cust_ID, cust_name, cust_address)
VALUES
(1, 'Uninformee', 'Indonesia Jakarta'),
(2, 'Value Furniture', '15145 S.W. 17th St.Plano TX 750'),
(3, 'AB Software', 'Indonesia Bandung'),
(4, 'AKIE', 'Swedia'),
(5, 'Mentor Sekolah', 'Indonesia DIY Yogyakarta');

SELECT * FROM pvfc_cust;

INSERT INTO 
pvfc_order(order_ID, order_date,cust_ID,product_ID,quantity ,extended_price, total)
VALUES
(1006, '2006-10-24',2 ,7 ,2, 1600 , 2900),
(1046, '2006-10-24',1 ,2 , 2, 800 , 800),
(1236, '2006-10-24',4 ,4 , 2, 650 , 1300),
(1016, '2006-10-24',5 ,2 , 1, 400 , 400),
(1406, '2006-10-24',3 ,1 , 2, 300 , 300);


SELECT * FROM pvfc_order;
DROP TABLE pvfc_order;
DROP TABLE pvfc_cust;
DROP TABLE pvfc_product;
