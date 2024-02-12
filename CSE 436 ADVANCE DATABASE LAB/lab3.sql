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