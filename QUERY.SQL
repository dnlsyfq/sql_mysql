-- create database school;
-- create database test;
-- drop database test;
-- use school;
-- create table test(
--     test INT 
-- );

-- ALTER Table test
-- ADD COLUMN test2 VARCHAR(255);

-- DROP TABLE test;


-- CREATE TABLE info(
--     ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     NAME VARCHAR(255) NOT NULL,
--     AGE INT,
--     CLASS INT
-- );

-- CREATE TABLE grades (
--     ID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--     info_id INT NOT NULL,
--     arabic INT,
--     english INT,
--     FOREIGN KEY (info_id) REFERENCES info(id)
-- );

-- INSERT INTO INFO(NAME,AGE,CLASS) VALUES('John Emma',10,2),
-- ('Mohamed Ahmed',12,1),('Youssef Ahmed',11,2);

SELECT * FROM info;