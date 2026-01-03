--lets solve having and group by problems 
DROP TABLE IF EXISTS student_scores;
CREATE TABLE student_scores(
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    department VARCHAR(100),
    semester INT,
    marks INT,
    gender VARCHAR(100),
    attendance INT
);
PRAGMA table_info(student_scores);
INSERT INTO student_scores(student_id,student_name,department,semester,marks,gender,attendance)
VALUES
(1,'Arun','CSE',1,78,'M',85),
(2,'Bala','CSE',1,85,'M',90),
(3,'Charan','CSE',2,90,'M',92),
(4,'Divya','ECE',1,72,'F',80),
(5,'Esha','ECE',2,88,'F',95),
(6,'Farhan','ECE',2,65,'M',70),
(7,'Gokul','IT', 1,80,'M',88),
(8,'Hari','IT',1,76,'M',82),
(9,'Isha','IT',2,92,'F',96),
(10,'Jaya', 'IT',2,60,'F',75),
(11,'Karthik','CSE',3, 82,'M',91),
(12,'Lavanya','CSE',3, 88,'F',94),
(13,'Manoj','ECE', 3, 70,'M',78),
(14,'Nisha','ECE', 3, 91,'F',97),
(15,'Omkar','IT',  3, 84, 'M',89),
(16,'Priya','IT',  3, 90, 'F',93),
(17,'Rahul','CSE', 2, 67, 'M',72),
(18,'Sneha','ECE', 1, 86, 'F',88),
(19,'Tarun','IT',  2, 73, 'M',80),
(20,'Usha', 'CSE', 1, 95, 'F',98);

