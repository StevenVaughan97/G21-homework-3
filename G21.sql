create database IF NOT EXISTS G21HW3;
use G21HW3;

CREATE TABLE IF NOT EXISTS Employee(
Fname VARCHAR(30) NOT NULL,
Minit char,
Lname varchar(30) NOT NULL,
Ssn char(9) PRIMARY KEY,
Bdate DATE,
Address varchar(50) NOT NULL,
Sex char,
Salary decimal (10,2),
Super_ssn char(9),
Dno INT NOT NULL
);

Create table IF NOT EXISTS Department(
Dname varchar(30) Not Null,
Dnumber INT NOT NULL,
Mgr_ssn char(9),
Mgr_start_date date,
Primary key(Dnumber)
);

Create table IF NOT EXISTS Dept_locations(
Dnumber INT NOT NULL,
Dlocation varchar(30) not null,
primary key(Dnumber, Dlocation)
);

create table IF NOT EXISTS Project(
Pname varchar(30) not null,
Pnumber int Not null,
Plocation varchar(30)not null,
Dnum int Not null,
primary key(Pnumber)
);

create table IF NOT EXISTS Works_on(
Essn char(9) not null,
Pno int not null,
Hours char(10),
primary key(Pno, Essn)
);

create table IF NOT EXISTS Dependent(
Essn char(9) not null,
Dependent varchar(60),
Sex char,
Bdate date,
Relationship varchar(30),
primary key(Dependent, Essn)
);

insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('John', 'B', 'Smith', '123456789', '1965-01-09', '731 Fondren, Houston, TX', 'M', '30000', '333445555', '5');
insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('Franklin', 'T', 'Wong', '333445555', '1955-12-08', '638 Voss, Houston, TX', 'M', '40000', '888665555', '5');
insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('Alicia', 'J', 'Zelaya', '999887777', '1968-01-19', '3321 Castle, Spring, TX', 'F', '25000', '987654321', '4');
insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('Jennifer', 'S', 'Wallace', '987654321', '1941-06-20', '291 Berry, Bellaire, TX', 'F', '43000', '888665555', '4');
insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('Ramesh', 'K', 'Narayan', '666884444', '1962-09-15', '975 Fire Oak, Humble, TX', 'M', '38000', '333445555', '5');
insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('Joyce', 'A', 'English', '453453453', '1972-07-31', '5631 Rice, Houston, TX', 'F', '25000', '333445555', '5');
insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('Ahmad', 'V', 'Jabbar', '987987987', '1969-03-29', '980 Dallas, Houston, TX', 'M', '25000', '987654321', '4');
insert into Employee (Fname, Minit, Lname, Ssn, Bdate, Address, Sex, Salary, Super_ssn, Dno)
values ('James', 'E', 'Borg', '888665555', '1937-11-10', '450 Stone, Houston, TX', 'M', '55000', '', '1');

insert into Department (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
values('Research', '5', '333445555', '1988-05-22');
insert into Department (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
values('Adminsistration', '4', '987654321', '1995-01-01');
insert into Department (Dname, Dnumber, Mgr_ssn, Mgr_start_date)
values('Headquarters', '1', '888665555', '1981-06-19');

insert into Dept_locations (Dnumber, Dlocation)
values ('1', 'Houston');
insert into Dept_locations (Dnumber, Dlocation)
values ('4', 'Stafford');
insert into Dept_locations (Dnumber, Dlocation)
values ('5', 'Bellaire');
insert into Dept_locations (Dnumber, Dlocation)
values ('5', 'Sugarland');
insert into Dept_locations (Dnumber, Dlocation)
values ('5', 'Houston');

insert into Project (Pname, Pnumber, Plocation, Dnum)
values ('ProductX', '1', 'Bellaire', '5');
insert into Project (Pname, Pnumber, Plocation, Dnum)
values ('ProductY', '2', 'Sugarland', '5');
insert into Project (Pname, Pnumber, Plocation, Dnum)
values ('ProductZ', '3', 'Houston', '5');
insert into Project (Pname, Pnumber, Plocation, Dnum)
values ('Computerization', '10', 'Stafford', '4');
insert into Project (Pname, Pnumber, Plocation, Dnum)
values ('Reorganization', '20', 'Houston', '1');
insert into Project (Pname, Pnumber, Plocation, Dnum)
values ('Newbenefits', '30', 'Stafford', '4');

insert into works_on (Essn, Pno, Hours)
values('123456789', '1', '32.5');
insert into works_on (Essn, Pno, Hours)
values('123456789', '2', '7.5');
insert into works_on (Essn, Pno, Hours)
values('666884444', '3', '40');
insert into works_on (Essn, Pno, Hours)
values('453453453', '1', '20');
insert into works_on (Essn, Pno, Hours)
values('453453453', '2', '20');
insert into works_on (Essn, Pno, Hours)
values('333445555', '2', '10');
insert into works_on (Essn, Pno, Hours)
values('33445555', '3', '10');
insert into works_on (Essn, Pno, Hours)
values('333445555', '10', '10');
insert into works_on (Essn, Pno, Hours)
values('333445555', '20', '19');
insert into works_on (Essn, Pno, Hours)
values('999887777', '30', '30');
insert into works_on (Essn, Pno, Hours)
values('999887777', '10', '10');
insert into works_on (Essn, Pno, Hours)
values('987987987', '10', '35');
insert into works_on (Essn, Pno, Hours)
values('987987987', '30', '5');
insert into works_on (Essn, Pno, Hours)
values('987654321', '30', '20');
insert into works_on (Essn, Pno, Hours)
values('987654321', '20', '15');
insert into works_on (Essn, Pno, Hours)
values('888665555', '20', '');

insert into Dependent (Essn, Dependent, Sex, Bdate, Relationship)
values('333445555', 'Alice', 'F', '1986-04-05', 'Daughter');
insert into Dependent (Essn, Dependent, Sex, Bdate, Relationship)
values('333445555', 'Theodore', 'M', '1983-10-25', 'Son');
insert into Dependent (Essn, Dependent, Sex, Bdate, Relationship)
values('333445555', 'Joy', 'F', '1958-05-03', 'Spouse');
insert into Dependent (Essn, Dependent, Sex, Bdate, Relationship)
values('987654321', 'Abner', 'M', '1942-02-28', 'Spouse');
insert into Dependent (Essn, Dependent, Sex, Bdate, Relationship)
values('123456789', 'Michael', 'M', '1988-01-04', 'Son');
insert into Dependent (Essn, Dependent, Sex, Bdate, Relationship)
values('123456789', 'Alice', 'F', '1988-12-30', 'Daughter');
insert into Dependent (Essn, Dependent, Sex, Bdate, Relationship)
values('123456789', 'Elizabeth', 'F', '1967-05-05', 'Spouse');


SELECT * FROM Employee;
select * from Department;
SELECT * FROM Dept_locations;
SELECT * FROM Project;
SELECT * FROM Works_on;
SELECT * FROM Dependent;

SELECT Fname, Lname
FROM Employee, Works_on, Project
WHERE Dno=5 AND Ssn=Essn AND Pno=Pnumber AND Pname='ProductX' AND Hours>10;

SELECT Fname, Lname
FROM Employee, Dependent
WHERE Ssn=Essn AND Fname=Dependent;

SELECT Fname, Lname
FROM Employee
WHERE Super_ssn IN ( SELECT Ssn
FROM Employee
WHERE Fname='Franklin' AND Lname='Wong');

SELECT Pname, SUM(Hours)
FROM Project, Works_on
WHERE Pnumber=Pno
GROUP BY Pname;

SELECT Fname, Lname
FROM Employee
WHERE NOT EXISTS ( SELECT Pnumber
FROM Project
WHERE NOT EXISTS ( SELECT *
FROM Works_on
WHERE Pnumber=Pno AND Essn=Ssn ));

SELECT Fname, Lname
FROM Employee
WHERE NOT EXISTS ( SELECT *
FROM Works_on
WHERE Essn=Ssn);

SELECT Dname, AVG (Salary)
FROM Department, Employee
WHERE Dnumber=Dno
GROUP BY Dname;

SELECT AVG (Salary)
FROM Employee
WHERE Sex='F';

SELECT Fname, Lname, Address
FROM Employee
WHERE EXISTS ( SELECT *
FROM Works_on, Project
WHERE Ssn=Essn AND Pno=Pnumber AND Plocation='Houston')
AND
NOT EXISTS ( SELECT *
FROM Dept_locations
WHERE Dno=Dnumber AND Dlocation='Houston');

SELECT Fname, Lname
FROM Employee
WHERE EXISTS ( SELECT *
FROM Department
WHERE Ssn=Mgr_ssn)
AND
NOT EXISTS ( SELECT *
FROM Dependent
WHERE Ssn=Essn);






DROP TABLE IF EXISTS Employee;

DROP TABLE IF EXISTS Department;

DROP TABLE IF EXISTS Dept_locations;

DROP TABLE IF EXISTS Project;

DROP TABLE IF EXISTS Works_on;

DROP TABLE IF EXISTS Dependent;



