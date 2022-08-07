CREATE DATABASE STUDENTS;
USE STUDENTS;
CREATE TABLE STUDENTS_LIST (
	ID int primary key auto_increment,
	STUDENT_NAME varchar(80) not null,
	EMAIL varchar(80),
	TELEPHONE bigint not null,
    	STUDENT_ID bigint not null,
    	REGISTRATION bigint not null
);