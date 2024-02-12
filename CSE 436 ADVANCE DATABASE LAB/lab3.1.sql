CREATE TABLE secb(
    id int,
    name varchar(255),
    email varchar(255)
);

CREATE TABLE secb(
    id int,
    name varchar(255),
    email varchar(255)
);

INSERT into seca ( id , name ,email) VALUES 
(1, 'Rakib' , 'rakib@mail.com'),
(2, 'Sohan' , 'sohan@mail.com');

INSERT into secb ( id , name ,email) VALUES 
(1, 'Rakib' , 'rakib@mail.com'),
(2, 'Zahid' , 'zahid@mail.com');

select * from seca
UNION
SELECT * from secb;

select * from seca
UNION ALL
SELECT * from secb;

select id , name from seca
UNION
SELECT id, name from secb;

select id , name from seca
UNION
SELECT  name ,id from secb;

select id , name from seca
UNION
SELECT  id from secb;


CREATE TABLE student(
    id int,
    name varchar(20),
    email varchar(50)
);    

INSERT into student VALUES
    (1, 'Nahid' , 'nahid@gmail.com'),
    (2, 'Omit' , 'omit@mail.com'),
    (3, 'pavel' , 'pavel@gmail.com');


ALTER TABLE student
add column mobile varchar(15); 

ALTER TABLE student
add column dept varchar(15); 
























