CREATE TABLE EMP
(
EMPNO INT,
ENAME VARCHAR(20),
JOB VARCHAR(20),
SALARY INT,
COMMISION INT,
DEPTNO INT
);

DESCRIBE EMP;

INSERT INTO EMP(EMPNO,ENAME,JOB,SALARY,DEPTNO)
VALUES(7369, 'SMITH', 'CLERK',800,20);

INSERT INTO EMP(EMPNO,ENAME,JOB,SALARY,COMMISION,DEPTNO)
VALUES(7499,'ALLEN','SALESMAN',1600,300,30),
(7521,'WARD','SALESMAN ',1250,500,30),
(7654,'MARTIN','SALESMAN',1250, 1400,30);

INSERT INTO EMP(EMPNO,ENAME,JOB,SALARY,DEPTNO)
VALUES(7566,'JONES','MANAGER',2975,20),
(7782 ,'CLARK','MANAGER',2450,10),
(7788 ,'SCOTT','ANALYST',3000,20),
(7839,' KING ','PRESIDENT',5000,10),
(7844,'TURNER','SALESMAN',1500,30),
(7876,'ADAMS','CLERK',1100,20),
(7900,'JAMES','NULL',950,30),
(7902,'FORD ','ANALYST ',3000 ,20),
(7934,'MILLER','CLERK',1300 ,10);

UPDATE EMP
SET JOB='CLERK'  WHERE JOB ='NULL';

ALTER TABLE EMP
ADD COLUMN date_join VARCHAR(10);

SELECT * FROM EMP;

SELECT DISTINCT JOB FROM EMP;

SELECT ENAME FROM EMP WHERE DEPTNO BETWEEN 20 AND 30;

SELECT ENAME,SALARY+COMMISION AS TOTALSAL FROM EMP;

SELECT ENAME,SALARY+12 AS ANNUALLSAL FROM EMP;

SELECT ENAME ,DATE_JOIN  FROM EMP WHERE DATE_JOIN= '03-DEC-81' ;

SELECT ENAME,SALARY,COMMISION,SALARY+COMMISION+SALARY AS TOTALSAL FROM EMP WHERE ENAME='MILLER';

DELETE FROM EMP WHERE ENAME='MILLER';
SELECT * FROM emp;


 SELECT ENAME,DEPTNO  FROM EMP;

UPDATE EMP SET  COMMISION=0 WHERE COMMISION IS NULL ;
UPDATE EMP SET  SALARY= SALARY +COMMISION ; 
ALTER TABLE EMP  DROP COLUMN COMMISION;

SELECT S1.ENAME, S1.SALARY
FROM EMP S1
INNER JOIN EMP S2 ON S1.SALARY = s2.SALARY AND S1.ENAME <> S2.ENAME;
CREATE TABLE EMP_TAB  AS SELECT * FROM EMPLOYEE;
DESCRIBE EMPLOYEE;


SELECT * FROM EMP_TAB ;
SELECT * FROM EMPLOYEE;


TRUNCATE TABLE  EMPLOYEE;
SELECT * FROM EMPLOYEE;

DROP TABLE EMPLOYEE;
