CREATE TABLE Student (
    id INT,
    name VARCHAR(50),
    deptid INT
);

INSERT INTO Student (id, name, deptid) VALUES
(178, 'Atik', 105),
(148, 'Bob', 107),
(122, 'Jhon', 105),
(167, 'Tom', NULL);

select * from student ;

CREATE TABLE Department (
    Did INT,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

select * from department ;

-- Insert data into Department table
INSERT INTO department  (Did, DeptName, Location) VALUES
(105, 'ECO', 'KHARKHARI'),
(107, 'POL SCI', 'KHARKHARI'),
(109, 'ENG', 'KAZLA');

-- Inner join between Student and Department tables
SELECT *
FROM Student
INNER JOIN Department ON Student.deptid = Department.Did;


-- Right join between Student and Department tables
SELECT *
FROM Student
RIGHT JOIN Department ON Student.deptid = Department.Did;



-- Left join between Student and Department tables
SELECT *
FROM Student
LEFT JOIN Department ON Student.deptid = Department.Did;

















