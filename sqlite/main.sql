CREATE TABLE t1(x INT CHECK( x>3 ));

CREATE TABLE t(x INTEGER, y, z, PRIMARY KEY(x ASC));

DROP TABLE t;
DROP TABLE t1;


DROP TABLE IF EXISTS person ;

CREATE table person(ID INT PRIMARY KEY NOT NULL, name CHAR(255), surname CHAR(255), birth_date text)

INSERT INTO person (ID, name, surname, birth_date)
VALUES(1, 'pname','psurname',datetime('now', 'localtime'));


DROP TABLE IF EXISTS proffession;

CREATE table proffession(ID INT PRIMARY KEY NOT NULL, name CHAR(255))

INSERT INTO proffession (ID, name)
VALUES(1, 'profession name');

