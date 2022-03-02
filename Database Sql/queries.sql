-- create a table(users)
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  attendance_Percentage INTEGER ,
  task INTEGER
);
-- insert some values
INSERT INTO users VALUES (1, 'Kumar', 'kumar23@gmail.com',59,14);
INSERT INTO users VALUES (2, 'Madhi', 'madhi98@gmail.com',82,18);
INSERT INTO users VALUES (3, 'Dhanush', 'dhanush2342@yahoo.com',81,21);
INSERT INTO users VALUES (4, 'Prabu', 'prabu899@gmail.com',85,16);
INSERT INTO users VALUES (5, 'Mari', 'mart4654@gmail.com',80,19);
INSERT INTO users VALUES (6, 'Vera', 'vera1311@yahoo.com',86,20);
-- fetch some values


-- create a table(codekata)
CREATE TABLE codekata(
    user_id INTEGER ,
    input_output INTEGER,
    absolute_beginer INTEGER,
    array INTEGER,
    mathematics INTEGER,
    amazon INTEGER,
    Total_solved INTEGER
);
-- inser some values 
INSERT INTO codekata VALUES(1,5,20,19,23,14,81);
INSERT INTO codekata VALUES(2,8,24,30,13,10,85);
INSERT INTO codekata VALUES(3,4,18,21,25,13,81);
INSERT INTO codekata VALUES(4,10,14,17,27,20,88);
INSERT INTO codekata VALUES(5,6,16,26,12,17,77);
INSERT INTO codekata VALUES(6,3,12,28,15,13,71);

-- create a table(mentors)
CREATE TABLE mentors(
  id_list INTEGER PRIMARY KEY,
  user_id INTEGER,
  mentors TEXT NOT NULL
);

-- inser some values
INSERT INTO mentors VALUES(1,1,'Mariappan');
INSERT INTO mentors VALUES(2,1,'John');
INSERT INTO mentors VALUES(3,2,'Mohan');
INSERT INTO mentors VALUES(4,3,'Mohan');
INSERT INTO mentors VALUES(5,2,'Kumar');
INSERT INTO mentors VALUES(6,3,'Mariappan');
INSERT INTO mentors VALUES(7,4,'Ram');
INSERT INTO mentors VALUES(8,5,'Ram');
INSERT INTO mentors VALUES(9,4,'Ramesh');
INSERT INTO mentors VALUES(10,5,'Vijay');
INSERT INTO mentors VALUES(11,6,'Prabakaran');
INSERT INTO mentors VALUES(12,6,'Prabakaran');

-- create a table(company_drivens)
CREATE TABLE company_drivens(
  id_list INTEGER PRIMARY KEY,
  user_id INTEGER,
  company TEXT NOT NULL
);
-- insert some values
INSERT INTO company_drivens VALUES(1,1,'Zoho');
INSERT INTO company_drivens VALUES(2,1,'FreshWork');
INSERT INTO company_drivens VALUES(3,3,'Justpay');
INSERT INTO company_drivens VALUES(4,2,'Zoho');
INSERT INTO company_drivens VALUES(5,3,'Zoho');
INSERT INTO company_drivens VALUES(6,2,'Flipkart');
INSERT INTO company_drivens VALUES(7,2,'Paypal');
INSERT INTO company_drivens VALUES(8,1,'Paypal');
INSERT INTO company_drivens VALUES(9,4,'FreshWork');
INSERT INTO company_drivens VALUES(10,4,'Justpay');
INSERT INTO company_drivens VALUES(11,5,'FreshWork');
INSERT INTO company_drivens VALUES(12,5,'Flipkart');
INSERT INTO company_drivens VALUES(13,6,'Zoho');
INSERT INTO company_drivens VALUES(14,6,'Google');
INSERT INTO company_drivens VALUES(15,5,'Zoho');
INSERT INTO company_drivens VALUES(16,1,'Google');
INSERT INTO company_drivens VALUES(17,3,'Flipkart');
INSERT INTO company_drivens VALUES(18,4,'Flipkart');
INSERT INTO company_drivens VALUES(19,4,'Zoho');
INSERT INTO company_drivens VALUES(20,6,'Paypal');


-- 1.Create tables for the above list given
-- Ans: created

-- 2.insert at least 5 rows of values in each table
-- Ans:inserted more then 5 values

-- 3.get number problems solved in codekata by combining the users
-- Ans: 1,SELECT * FROM users inner join codekata on id = user_id;
--      2,SELECT name,Total_solved FROM users inner join codekata on id = user_id;
  1,SELECT * FROM users inner join codekata on id = user_id;
  2,SELECT name,Total_solved FROM users inner join codekata on id = user_id;

-- 4.display the no of company drives attended by a user
-- Ans:1,SELECT distinct id,name,email,company  FROM users inner join company_drivens on id = user_id order by id;
--     2,SELECT *  FROM users inner join company_drivens on id = user_id order by id;
    1,SELECT distinct id,name,email,company  FROM users inner join company_drivens on id = user_id order by id;
    2,SELECT *  FROM users inner join company_drivens on id = user_id order by id;

-- 5.combine and display students_activated_courses and courses for a specific user groping them based on the course
-- Ans:1,SELECT *  FROM users inner join students_activated_courses on id = user_id order by id,course;
--     2,SELECT id,name,email,course  FROM users inner join students_activated_courses on id = user_id order by id,course;
    1,SELECT *  FROM users inner join students_activated_courses on id = user_id order by id,course;
    2,SELECT id,name,email,course  FROM users inner join students_activated_courses on id = user_id order by id,course;

-- 6. list all the mentors
-- Ans:SELECT distinct mentor FROM mentors ;
    SELECT distinct mentor FROM mentors ;

-- list the number of students that are assigned for a mentor
-- Ans:1,SELECT * FROM users inner join mentors on id=user_id ;
--     2,SELECT id,name,mentor FROM users inner join mentors on id=user_id ;
    1,SELECT * FROM users inner join mentors on id=user_id ;
    2,SELECT id,name,mentor FROM users inner join mentors on id=user_id ;