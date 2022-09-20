create database student;
use student;

create table students(
nim INT NOT NULL AUTO_INCREMENT,
st_name varchar(255) NOT NULL,
st_citad varchar(255) NOT NULL,
st_age INT NOT NULL,
st_ipk FLOAT NOT NULL,
st_dpt varchar(255),
PRIMARY KEY (nim)
) engine=innodb;

INSERT INTO students (nim, st_name, st_citad, st_age, st_ipk, st_dpt)
VALUES
(12345, "Adi", "Jakarta", 17, 2.5, "Math");

INSERT INTO students (st_name, st_citad, st_age, st_ipk, st_dpt)
VALUES
("Ani", "Yogyakarta", 20, 2.1, "Math"),
("Ari", "Surabaya", 18, 2.5, "Computer"),
("Ali", "Banjarmasin", 20, 3.5, "Computer"),
("Abi", "Medan", 17, 3.7, "Computer"),
("Budi", "Jakarta", 19, 3.8, "Computer"),
("Boni", "Yogyakarta", 20, 3.2, "Computer"),
("Bobi", "Surabaya", 17, 2.7, "Computer"),
("Beni", "Banjarmasin", 18, 2.3, "Computer"),
("Cepi", "Jakarta", 20, 2.2, NULL),
("Coni", "Yogyakarta", 22, 2.6, NULL),
("Ceki", "Surabaya", 21, 2.5, "Math"),
("Dodi", "Jakarta", 20, 3.1, "Math"),
("Didi", "Yogyakarta", 19, 3.2, "Physics"), 
("Deri", "Surabaya", 19, 3.3, "Physics"), 
("Eli", "Jakarta", 20, 2.9, "Physics"), 
("Endah", "Yogyakarta", 18, 2.8, "Physics"), 
("Feni", "Jakarta", 17, 2.7, NULL), 
("Farah", "Yogyakarta", 18, 3.5, NULL),
("Fandi", "Surabaya", 19, 3.4, NULL);

SELECT * FROM students;
/* soal 1 */
SELECT DISTINCT st_citad FROM students;

/* soal 2 */
SELECT st_name FROM students
WHERE st_dpt = "Computer";

/* soal 3 */
SELECT nim, st_name, st_age, st_citad FROM students
ORDER BY st_age DESC;

/* soal 4 */
SELECT st_name, st_age FROM students
WHERE st_citad IN ("Jakarta")
ORDER BY st_age LIMIT 3;

/* soal 5 */
SELECT st_name, st_ipk FROM students
WHERE st_citad IN ("Jakarta") AND st_ipk < 2.5;

/* soal 6 */
SELECT st_name FROM students
WHERE st_citad = "Yogyakarta" or st_age > 20;

/* soal 7 */
SELECT st_name, st_citad FROM students
WHERE st_citad NOT IN ("Jakarta", "Surabaya");

/* soal 8 */
SELECT st_name, st_age, st_ipk FROM students
WHERE st_ipk BETWEEN 2.5 and 3.5;

/* soal 9 */
SELECT st_name FROM students
WHERE st_name LIKE 'a%' OR st_name LIKE '%a%' OR st_name LIKE '%a';

/* soal 10 */
SELECT nim FROM students
WHERE st_dpt is NULL;

