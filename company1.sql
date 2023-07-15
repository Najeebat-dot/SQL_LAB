
--selecting the database to use
USE COMPANY1;

--listing employee's name dept no and salary whose salary ranges BETWEEN 1,000 and 2,000
select ENAME, DEPTNO, SAL from EMP WHERE SAL BETWEEN 1000 AND 2000;

--using key count to get number of rows where employee has salary and commision
--using is not clause to get rows with commision at the commision column
select count(*)from EMP WHERE DEPTNO=30 and COMM IS NOT NULL;

--obtaining list of employee living in Dallas
--by joining the tables- emp and DEPT
select EMP.ENAME, EMP.SAL from EMP join DEPT on EMP.DEPTNO=DEPT.DEPTNO 
where EMP.SAL>=1000 and DEPT.LOC="Dallas";

--getting DEPT without employee
select DEPT.DEPTNO,DEPT.DNAME from DEPT left join EMP on 
DEPT.DEPTNO=EMP.DEPTNO where EMP.DEPTNO is null;

SELECT DEPTNO, AVG(SAL) AS AverageSalary, COUNT(EMPNO) AS EmployeeCount
from EMP group by DEPTNO;