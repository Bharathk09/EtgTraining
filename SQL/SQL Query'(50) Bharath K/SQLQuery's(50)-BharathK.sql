use Training;

--1. Show the structure of the DEPT table. Select all the data from the Dept table.
SELECT *
FROM DEPT;

--2. Show the structure of the EMP table. Create a query to display the name, job, hiredate and employee number.
SELECT ENAME, JOB, HIREDATE, EMPNO
FROM EMP;

--3. Display the employee name, job, monthly and annual salary with appropriate column titles.
SELECT ENAME,JOB, 
SAL AS 'MONTHLY SALARY',
SAL*12 AS 'ANNUAL SALARY'
FROM EMP;

--4. Display the name concatenated with the job, separated by a comma and space, and the name the column Employee and Title.
SELECT ENAME+', '+JOB AS 'Employee and Title'
FROM EMP;

--5. Display unique jobs from the emp table.
SELECT DISTINCT JOB
FROM EMP;


--6. Display the name and salary of employees earning more than 2850.
SELECT ENAME,SAL
FROM EMP
WHERE SAL > 2850;


--7. Create a query to display the employee name and department number for employee SMITH.
SELECT ENAME,DEPTNO
FROM EMP
WHERE ENAME LIKE 'SMITH' 

--8. Display the employee name, job and start date of employees hired between February 20, 1981 and May 1, 1981. Order the query in ascending order of start date.
SELECT ENAME,JOB,HIREDATE 
FROM EMP 
WHERE HIREDATE BETWEEN '20-FEB-81' AND '01-MAY-81' 
ORDER BY(HIREDATE);


--9. Display the employee name and department number of all employees in departments 10 and 30 in alphabetical order by name.
SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO IN (10, 30)
ORDER BY ENAME;



--10. Display the name and hiredate of every employee who was hired in 1982.
SELECT ENAME, HIREDATE
FROM EMP 
WHERE YEAR(HIREDATE) LIKE '1982%';


--11. Display the name and title of all employees who do not have a manager.
SELECT ENAME, JOB, MGR
FROM EMP
WHERE MGR IS NULL;


--12. Write a query to display the current date. Label the column Date.
SELECT GETDATE() AS 'Date and Time';

--13. Display the employees who were hired before their managers.
SELECT ENAME, HIREDATE,JOB
FROM EMP
WHERE HIREDATE < ANY (SELECT HIREDATE 
                  FROM EMP 
				  WHERE JOB LIKE 'MANAGER');

--14. Determine the number of managers without listing them.
SELECT COUNT (*)
FROM EMP
WHERE JOB IN ('MANAGER');

--15. List employee details working in departments 20,30 & 40.
SELECT *
FROM EMP
WHERE DEPTNO IN (20,30,40)
ORDER BY DEPTNO;

--16. List of employees whose names start with T and end with R.
SELECT ENAME AS 'Name Stars with T and ends with R'
FROM EMP
WHERE ENAME LIKE 'T%%R';

--17. List the name and hiredate of the employee in department 30.
SELECT ENAME, HIREDATE, DEPTNO
FROM EMP
WHERE DEPTNO IN (30);


--18. Display the hiredate in emp table formatted as ‘mm/dd/yy’.
SELECT CONVERT(VARCHAR, HIREDATE, 1) AS 'MM/DD/YY'
FROM EMP;

--19. Retrieve the analysts’ record with the hiredate formatted as ‘the 3rd of Decemeber, 1984’.
SELECT EMPNO,ENAME,JOB,SAL,COMM, CONVERT(VARCHAR, HIREDATE, 106) AS 'HIREDATE'
FROM EMP
WHERE JOB IN ('ANALYST');

--20. List the names of all employees whose hiredate anniversary is in the month of December.
SELECT ENAME,HIREDATE
FROM EMP
WHERE MONTH(HIREDATE)=12;


--21. Give SQL command to find the average annual salary per job in each department.
SELECT	JOB,DEPTNO, 
		AVG(SAL*12) AS 'ANNUAL_SAL'
FROM EMP
GROUP BY JOB ,DEPTNO;


--22. In one query, count the number of people in department in 30 who receive a salary and the number of people who receive a commission.
SELECT	COUNT(SAL) AS 'Salary count',
		COUNT(COMM) AS 'Commission Count'
FROM EMP
WHERE DEPTNO = 30 ;


--23. Compute the average, minimum and maximum salaries of those groups of employees having the job as clerk or manager.
SELECT	AVG(SAL) AS 'AVERAGE salary', 
			MIN(SAL) AS 'MINIMUM salary',
			MAX(SAL) AS 'MAXIMUM salary'
FROM EMP
WHERE JOB = 'CLERK' OR JOB ='MANAGER';



--24. Display the department numbers of departments which have more than one clerk.
SELECT DEPTNO, COUNT(JOB) AS 'CLERK COUNT'
FROM EMP
WHERE JOB = 'CLERK'
GROUP BY DEPTNO;



--25. Which employees earn less than 30 persent of the presidents salary.
SELECT	ENAME, SAL
FROM EMP
WHERE SAL < (SELECT SAL*0.3
                 FROM EMP 
                 WHERE JOB= 'PRESIDENT');



--26. How many employees work in Chicago?
SELECT COUNT(ENAME)
FROM EMP
JOIN
DEPT
ON LOC='CHICAGO';


--27. Which employees work in Chicago?
SELECT ENAME
FROM EMP
JOIN
DEPT
ON LOC='CHICAGO';


--28. List the employees’ names and cities in which they work. Order the list by city.
SELECT e.ENAME, d.LOC
FROM EMP e
JOIN 
DEPT d
ON d.DEPTNO=e.DEPTNO
ORDER BY LOC;


--29. Find the number or different employees and number of departments.
SELECT COUNT(DISTINCT DEPTNO)
FROM EMP;


--30. Determine the average salaries of employees.
SELECT ENAME,
AVG(SAL) AVERAGESALARY
FROM EMP
GROUP BY ENAME;


--31. Determine number of departments in the company.
SELECT COUNT(DEPTNO) AS 'No.of Depts'
FROM EMP;


--32. List department number, department name, location and total commission paid and total salary of each department.
SELECT	DISTINCT e.DEPTNO,
		DNAME,
		LOC,
		SUM(COMM) AS TOTALCOMMISSION,
		SUM(SAL) AS TOTOFEACHDEPT
FROM EMP e,DEPT d
GROUP BY e.DEPTNO,DNAME,LOC
ORDER BY DEPTNO;



--33. Display the employee name, job description and the salary multiplied by 12.
SELECT	ENAME,JOB,
		SAL*12 AS 'SALARY multiplied by 12' 
FROM EMP;


--34. List the name, job and commission of employee who earn no commission.
SELECT ENAME,JOB,COMM
FROM EMP
WHERE COMM IS NULL;


--35. List the name, job and commission of employee who earn commission.
SELECT ENAME,JOB,COMM
FROM EMP
WHERE COMM IS NOT NULL;


--36. List the employee name, job description and salary where the third character of employee name is R.
SELECT	ENAME,JOB,SAL 
FROM EMP 
WHERE ENAME LIKE '__R%'; 


--37. List all the information from emp that are five characters long.
SELECT *
FROM EMP
WHERE ENAME LIKE '_____';


--38. List all the information from emp that are not five characters long.
SELECT *
FROM EMP
WHERE ENAME NOT LIKE '_____';


--39. List names that have A and followed by R.
SELECT	* 
FROM EMP 
WHERE ENAME LIKE '%AR%';


--40. List all the details of employee from emp table where department number is equal to 30, order the list  by their salary.
SELECT ENAME, SAL
FROM EMP
WHERE DEPTNO IN (30)
ORDER BY SAL;


--41. Select name and salary of employees who earn between 1250 and 1600.
SELECT ENAME, SAL
FROM EMP
WHERE SAL BETWEEN 1250 AND 1600;


--42. List the name and salary of employees who earn less than 1250 or more than 1600.
SELECT ENAME, SAL
FROM EMP
WHERE SAL NOT BETWEEN 1250 AND 1600;


--43. Compute the total salary of all employees.
SELECT SUM(SAL) AS 'TOTAL SALARY OF ALL EMPLOYEES'
FROM EMP;


--44. Count the number of employees who have job titles(that is, the number of rows where JOB is not NULL).
SELECT COUNT(ENAME) AS 'NO.OF EMPLOYEES AS JOB IS NOT NULL'
FROM EMP
WHERE JOB IS NOT NULL;


--45. Compute the minimum and the maximum salary in the company.
SELECT TOP 1 e.ENAME, MIN(SAL) AS 'MINIMUM SALARY'
FROM EMP e
GROUP BY ENAME;



--46. Write a query that produces all rows from the emp table with columns in  the following order with these as heading.
--Emp #, Employee, Salary, Job, Date of Hire, Commission, Department No, MGR No.
SELECT EMPNO AS 'EMP #',
ENAME AS 'EMPLOYEE',
SAL AS 'SALARY',
JOB AS 'JOB',
HIREDATE AS 'DATE OF HIRE',
COMM AS 'COMMISSION',
DEPTNO AS 'DEPARTMENT NO',
MGR AS 'MGR NO'
FROM EMP;


--47. What is the earliest date on which someone was hired, and what is the latest date on which someone was hired.
SELECT e.ENAME AS EARLIESTDATE, c.ENAME AS LATESTDATE
FROM EMP e, EMP c
WHERE e.EMPNO = c.MGR and c.HIREDATE < e.HIREDATE;


--48. Count the number of employees working in department 10.
SELECT COUNT(ENAME)AS 'TOTAL NO.OF EMPLOYEES IN DEPT 10',DEPTNO
FROM EMP
WHERE DEPTNO LIKE (10)
GROUP BY DEPTNO;


--49. Write a query that will give you the names and jobs of all employees in New York with a commission above 10.
SELECT ENAME,JOB,COMM
FROM EMP e
JOIN DEPT d
ON LOC='New York'
WHERE e.COMM > 10;


--50. Format the hiredate with the following date formats.
--a. DAY MONTH DD, YYYY
SELECT DATENAME(WEEKDAY,GETDATE()) 'Day Name', 
FORMAT(GETDATE(), 'mm-dd-yy') AS 'DAY MONTH DD, YYYY'

--b. DY DD Mon YYYY
SELECT DATENAME(WEEKDAY,GETDATE()) 'Day Name', 
FORMAT(GETDATE(), 'dd-mm-yy') AS 'DY DD Mon YYYY'

--c. Day ddth Month YYYY
SELECT DATENAME(WEEKDAY,GETDATE()) 'Day Name', 
FORMAT(GETDATE(), 'yy-mm-dd') AS 'Day ddth Month YYYY';