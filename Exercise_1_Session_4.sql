CREATE SCHEMA students_info;

CREATE TABLE students_info.STUDENTS
(
    id    SERIAL PRIMARY KEY,
    name  VARCHAR(50),
    age   INT,
    major VARCHAR(50),
    gpa   DECIMAL(3, 2)
);

INSERT INTO students_info.STUDENTS(name, age, major, gpa)
VALUES ('An', 20, 'CNTT', 3.5),
       ('Bình', 21, 'Toán', 3.2),
       ('Cường', 22, 'CNTT', 3.8),
       ('Dương', 20, 'Vật lý', 3.0),
       ('Em', 21, 'CNTT', 2.9);

INSERT INTO students_info.STUDENTS(name, age, major, gpa)
VALUES ('Hùng', 23, 'Hóa học', 3.4);

UPDATE students_info.STUDENTS
SET gpa = 3.6
WHERE name = 'Bình';

DELETE
FROM students_info.STUDENTS
WHERE gpa < 3.0;

SELECT s.name, s.major
FROM students_info.STUDENTS s
ORDER BY gpa DESC;

SELECT s.name
FROM students_info.STUDENTS s
WHERE major = 'CNTT'
LIMIT 1;

SELECT s.id, name, age, major, gpa
FROM students_info.STUDENTS s
WHERE gpa >= 3.0
  AND gpa <= 3.6;

SELECT s.id, name, age, major, gpa
FROM students_info.STUDENTS s
WHERE name LIKE 'C%';

SELECT s.id, name, age, major, gpa
FROM students_info.STUDENTS s
ORDER BY name
LIMIT 3;

SELECT s.id, name, age, major, gpa
FROM students_info.STUDENTS s
ORDER BY name
LIMIT 3 OFFSET 1;
