#Create database in MySQL and then run the following commands in R console.

library(DBI)
library(RODBC)
library(RMySQL)
mydb <- dbConnect(MySQL(),user='root',password='yourpassword',dbname='dhar12',host='localhost',port=3307);
dbListTables(mydb)

query1a <- dbSendQuery(mydb,"select * from deptt");
data1a <- fetch(query1a,n=-1)
print(data1a)

query1b <- dbSendQuery(mydb,"select * from employee");
data1b <- fetch(query1b,n=-1)
print(data1b)

query1c <- dbSendQuery(mydb,"select * from salgrade");
data1c <- fetch(query1c,n=-1)
print(data1c)

query2 <- dbSendQuery(mydb,"select ename from employee where salary between 15000 and 25000");
data2 <- fetch(query2,n=-1)
print(data2)

query3 <- dbSendQuery(mydb,"select e.salary,s.grade from employee e,salgrade s where e.salary between s.Min_Sal and s.Max_Sal");
data3 <- fetch(query3,n=-1)
print(data3)
   
query4 <- dbSendQuery(mydb,"select ename from employee where deptno=30");
data4 <- fetch(query4,n=-1)
print(data4)

query5 <- dbSendQuery(mydb,"select ename from Employee where ename regexp 'Ra' or ename regexp 'ra' or ename regexp 'su' or ename regexp 'Su'");
data5 <- fetch(query5,n=-1)
print(data5)

query6 <- dbSendQuery(mydb,"select ename,designation,salary from employee where MGR_No is not Null");
data6 <- fetch(query6,n=-1)
print(data6)

query7 <- dbSendQuery(mydb,"select deptno,avg(salary) from employee group by deptno having count(*)>3");
data7 <- fetch(query7,n=-1)
print(data7)

query8 <- dbSendQuery(mydb,"select designation,salary from Employee where salary>75000");
data8 <- fetch(query8,n=-1)
print(data8)

query9 <- dbSendQuery(mydb,"select min(salary),max(salary),designation from employee group by designation");
data9 <- fetch(query9,n=-1)
print(data9)

query10 <- dbSendQuery(mydb,"select empno,ename,dptname,project from employee,deptt where employee.deptno=deptt.deptno and designation='Manager'");
data10 <- fetch(query10,n=-1)
print(data10)

query11 <- dbSendQuery(mydb," select ename,salary,deptno from employee where (deptno,salary) in (select deptno,min(salary) from employee group by deptno) order by deptno");
data11 <- fetch(query11,n=-1)
print(data11)

query12 <- dbSendQuery(mydb,"select * from employee where MGR_No is null");
data12 <- fetch(query12,n=-1)
print(data12)

query13 <- dbSendQuery(mydb,"select * from employee having datediff('2021-10-09',DOJ) DIV 365 >35 or datediff('2021-10-09',DOB) DIV 365 >60");
data13 <- fetch(query13,n=-1)
print(data13)

query14 <- dbSendQuery(mydb,"select * from employee order by salary desc limit 0,3");
data14 <- fetch(query14,n=-1)
print(data14)

query15 <- dbSendQuery(mydb,"select * from employee e where DOJ in (select max(DOJ) from employee where e.deptno=deptno) order by DOJ desc");
data15 <- fetch(query15,n=-1)
print(data15)


