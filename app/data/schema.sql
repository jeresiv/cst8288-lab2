/**
* Author:  sivanej
*/

DROP DATABASE IF EXISTS lab2;
CREATE DATABASE lab2;
USE lab2;

CREATE TABLE Student (
    studentId int NOT NULL,
    firstName varchar(100) NOT NULL,
    lastName varchar(100) NOT NULL,
    PRIMARY KEY (studentId)
);

CREATE TABLE Course (
    courseId varchar(7) NOT NULL,
    courseName varchar(140) NOT NULL,
    PRIMARY KEY (courseId)
);

CREATE TABLE StudentCourse (
    studentId int NOT NULL,
    courseId varchar(7) NOT NULL,
    term int NOT NULL,
    year int NOT NULL,
    FOREIGN KEY (studentId) REFERENCES Student(studentId),
    FOREIGN KEY (courseId) REFERENCES Course(courseId),
    PRIMARY KEY (studentId, courseId)
);