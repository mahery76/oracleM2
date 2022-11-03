CREATE TABLE emp (id_emp number(4), nom_emp varchar(50))
ALTER TABLE emp MODIFY (id_emp number(4) unique)
SELECT table_name FROM user_tables;

DROP TABLE emp;
