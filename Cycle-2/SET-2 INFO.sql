
USE INFO;
CREATE TABLE STUDENT_INFO
(
SID INT UNIQUE,
STUD_NAME VARCHAR(20) NOT NULL,
STUDE_SCORE INT DEFAULT(20)
);

ALTER TABLE STUDENT_INFO  DROP INDEX SID;
ALTER TABLE STUDENT_INFO  ADD PRIMARY KEY(SID) ;

INSERT INTO STUDENT_INFO(SID,STUD_NAME,STUDE_SCORE)
VALUES(01,'ABIN',120),
(02,'PAUL',160),
(03,'DOE',150),
(04,'AKHIL',170);

UPDATE STUDENT_INFO SET STUDE_SCORE= STUDE_SCORE+5 WHERE  STUDE_SCORE>150;
SELECT * FROM STUDENT_INFO;

CREATE TABLE WORKER
 (
WORKER_ID INT,
FIRST_NAME VARCHAR(15),
LAST_NAME VARCHAR(15),
SALARY INT,
JOINING_DATE DATE,
DEPARTMENT VARCHAR (15)
);

CREATE TABLE BONUS
(WORKER_ID INT, 
BONUS_DATE DATE,
BONUS_AMOUNT INT
);

ALTER TABLE WORKER ADD  PRIMARY KEY(WORKER_ID);

ALTER TABLE BONUS ADD CONSTRAINT fk_cod_csd FOREIGN KEY(WORKER_ID) REFERENCES
WORKER(WORKER_ID) ON DELETE CASCADE;

INSERT INTO WORKER(WORKER_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
VALUES(1,' Monika', 'Arora', 100000, '2014-02-20', 'HR'),
(2, 'Niharika',' Verma', 80000, '2014-06-11', 'Admin'),
(3,' Vishal',' Singhal', 300000, '2014-02-20',' HR'),
(4, 'Amitabh',' Singh', 500000, '2014-02-20', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11', 'Account'),
(7,'Satish', 'Kumar', 75000, '2014-01-20',' Account'),
(8,' Geetika', 'Chauhan', 90000, '2014-04-11',' Admin');

INSERT INTO BONUS(WORKER_ID,BONUS_DATE,BONUS_AMOUNT)
VALUES(1, '2016-02-20', 5000),
(2, '2016-06-11', 3000),
(3, '2016-02-20', 4000),
(1, '2016-02-20', 4500),
(2, '2016-06-11', 3500);

SELECT * FROM BONUS;

SELECT FIRST_NAME AS WORKER_NAME FROM WORKER;

SELECT * FROM WORKER ORDER BY TRIM(FIRST_NAME) ASC;

SELECT * FROM WORKER WHERE TRIM(FIRST_NAME) !='Vipul' AND TRIM(FIRST_NAME) !='Satish';

SELECT * FROM WORKER WHERE DEPARTMENT='ADMIN';

SELECT * FROM WORKER WHERE SALARY BETWEEN 100000 AND 500000;

SELECT UPPER(FIRST_NAME) FROM WORKER;

SELECT DISTINCT DEPARTMENT FROM WORKER;

SELECT SUBSTR(FIRST_NAME, 1, 3) AS SMALL FROM WORKER;

SELECT RTRIM(FIRST_NAME) FROM WORKER;

SELECT LTRIM(DEPARTMENT) FROM WORKER;

SELECT DISTINCT DEPARTMENT, LENGTH(DEPARTMENT) FROM WORKER ;

SELECT REPLACE(FIRST_NAME, 'a', 'A') AS FNAME FROM WORKER;

SELECT FIRST_NAME,LAST_NAME,DEPARTMENT, SALARY,BONUS_AMOUNT
FROM WORKER,BONUS
WHERE WORKER.WORKER_ID = BONUS.WORKER_ID
AND BONUS_AMOUNT > 4000 ;

DELETE  FROM WORKER WHERE WORKER_ID=7;
SELECT * FROM WORKER ;
SELECT * FROM BONUS ;

ALTER TABLE BONUS
DROP CONSTRAINT fk_cod_csd;

ALTER TABLE BONUS
ADD CONSTRAINT fk_cod_na
FOREIGN KEY(WORKER_ID) REFERENCES
WORKER(WORKER_ID) ON DELETE NO ACTION ;

DELETE FROM WORKER WHERE WORKER_ID=8;