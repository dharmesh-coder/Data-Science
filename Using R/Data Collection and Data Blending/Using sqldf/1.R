library(sqldf)

salgrade <- data.frame(Min_Sal=c(10000,20000,30000,50000,90000),Max_Sal=c(15000,25000,45000,85000,110000),Grade=c(1,2,3,4,5))

sqldf("select * from salgrade")

deptt <- data.frame(Deptno=c(10,20,30,40,50),DptName=c('Audit','IT','Finance','Marketing','Production'),Location=c('Kolkata','Delhi','Mumbai','Banglore','Pune'),Project=c('P1','P2','P3','P4','P5'))
sqldf("select * from deptt")

employee <- data.frame(Empno=c(101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119),
Ename=c('Argha','Anand','Dharmesh','Ritima','Ramesh','Supriya','Ruchita','Dipanjan','Shyam','Sunny','Rahul','Shaswat','Aranya','Hari','Aditya','Abhisekh','Aniket','Ram','Rashid'),
Designation=c('Manager','Analyst','President','Sales','Analyst','Manager','Sales','Manager','Manager','Analyst','Analyst','Manager','Analyst','Sales','Sales','Sales','Sales','Clerk','Clerk'),
MGR_No=c(601,602,"NULL",603,601,602,601,603,604,603,604,605,605,602,603,604,605,601,603),
DOJ=c('2000-10-12','2001-05-07','1980-02-01','2002-07-21','2001-10-17','2004-01-14','2000-02-14','1998-06-14','1999-11-29','2000-06-28','1999-03-31','2005-08-16','2003-06-08','1999-11-30','1997-07-21','1998-12-24','1998-12-11','2000-10-30','2001-01-21'),
DOB=c('1980-10-12','1981-05-07','1966-02-01','1982-07-21','1981-10-17','1984-01-14','1980-02-14','1988-06-14','1989-11-29','1980-06-28','1979-03-31','1985-08-16','1983-06-08','1989-11-30','1989-07-21','1969-12-24','1978-12-11','1980-10-30','1981-01-21'),
Salary=c(32000,85000,105000,20000,72000,35000,22000,40000,42000,65000,63000,44000,70000,23000,25000,20000,21000,12000,15000),
Deptno=c(10,20,20,30,20,30,20,30,40,30,40,50,50,20,30,40,50,10,30))

sqldf("select * from employee")

sqldf("select ename from employee where salary between 15000 and 25000")
  
sqldf("select e.salary,s.grade from employee e,salgrade s where e.salary between s.Min_Sal and s.Max_Sal")

sqldf("select ename from employee where deptno=30")

sqldf("select ename from employee where ename like 'Ra%' or ename like '%ra%' or ename like '%su%' or ename like 'Su%'")

sqldf("select ename,designation,salary from employee where MGR_No is not Null")
     

sqldf("select deptno,avg(salary) from employee group by deptno having count(*)>3")

sqldf("select designation,salary from employee where salary>75000")

sqldf("select min(salary),max(salary),designation from employee group by designation")

sqldf("select empno,ename,dptname,project from employee,deptt where employee.deptno=deptt.deptno and designation='Manager'")

sqldf("select ename,salary,deptno from employee where (deptno,salary) in (select deptno,min(salary) from employee group by deptno) order by deptno")
 
sqldf("select ename from employee where deptno=30 and designation='Clerk'")

sqldf("select * from employee order by salary desc limit 0,3")

sqldf("select * from employee e where DOJ in (select max(DOJ) from employee where e.deptno=deptno) order by DOJ desc")


