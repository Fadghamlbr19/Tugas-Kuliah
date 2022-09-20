CREATE DATABASE IF NOT EXISTS academic;
USE academic;

CREATE TABLE IF NOT EXISTS student_table(
	NIM INT NOT NULL,
	student_name VARCHAR(255) NOT NULL, 
    gender VARCHAR(255) NOT NULL, 
    birth_place VARCHAR(255) NOT NULL, 
    birth_date DATE,
	address VARCHAR(255) NOT NULL, 
    phone VARCHAR(255) NOT NULL,
	PRIMARY KEY (NIM)
) ENGINE=INNODB;

DESC student_table;

CREATE TABLE IF NOT EXISTS lecturer_table(
	NIP INT NOT NULL,
	lecturer_name VARCHAR(255) NOT NULL, 
	gender char(1), 
	laboratory VARCHAR(255) NOT NULL, 
	interests TEXT, 
	address VARCHAR(255) NOT NULL,
	phone VARCHAR(255) NOT NULL, 
	PRIMARY KEY (NIP)
) ENGINE=INNODB;

DESC lecturer_table;

ALTER TABLE lecturer_table DROP PRIMARY KEY;

DESC lecturer_table;

ALTER TABLE lecturer_table ADD PRIMARY KEY(NIP);

DESC lecturer_table;

CREATE TABLE IF NOT EXISTS subject_table( 
	course_code INT NOT NULL, 
    course_name VARCHAR(255) NOT NULL, 
    NIP INT NOT NULL,
	credits INT NOT NULL,
	day VARCHAR(255) NOT NULL, 
    classroom VARCHAR(255) NOT NULL, 
    hour DATE,
	description TEXT,
	PRIMARY KEY (course_code),
	FOREIGN KEY (NIP) REFERENCES lecturer_table(NIP)
) ENGINE=INNODB;

DESC subject_table;

CREATE TABLE KRS_table(
	KRS_id INT AUTO_INCREMENT, 
	course_code INT NOT NULL, 
	NIM INT NOT NULL,
	credits INT NOT NULL,
	day VARCHAR(255) NOT NULL, 
	classroom VARCHAR(255) NOT NULL, 
	year INT NOT NULL,
	semester INT NOT NULL,
	PRIMARY KEY (KRS_id),
	FOREIGN KEY (course_code) REFERENCES subject_table(course_code), 
	FOREIGN KEY (NIM) REFERENCES student_table(NIM)
) ENGINE=INNODB;

DESC KRS_table;

SHOW tables;

ALTER TABLE lecturer_table RENAME TO professor;

SHOW tables;

ALTER TABLE professor RENAME COLUMN lecturer_name TO professor_name;

DESC professor;

ALTER TABLE student_table ADD mother_name VARCHAR(255) AFTER birth_date;

ALTER TABLE student_table MODIFY gender enum('male','female');

ALTER TABLE student_table MODIFY phone INT;

DESC student_table;

ALTER TABLE subject_table DROP COLUMN description;

DESC subject_table;

















