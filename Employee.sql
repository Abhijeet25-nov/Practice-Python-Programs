CREATE DATABASE EMPLOYEE;
USE EMPLOYEE;
CREATE TABLE EMPDATA (
	emp_id INT PRIMARY KEY,
    Name_emp VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    EMAIL VARCHAR(50),
    City VARCHAR(10),
    State VARCHAR(10),
    Ph_number INT UNIQUE);
    
CREATE TABLE DEPARTMENT(
	DEPT_ID INT PRIMARY KEY,
    emp_id INT,
    FOREIGN KEY(emp_id) REFERENCES EMPDATA(emp_id),
    Dept_name VARCHAR(20),
    OFFICE_CITY VARCHAR(20)
    );   

ALTER TABLE EMPDATA
MODIFY COLUMN Ph_number BIGINT UNIQUE;

ALTER TABLE EMPDATA MODIFY COLUMN City VARCHAR(50);

INSERT INTO EMPDATA VALUES
(101,'Abhijeet',22,'abhijeet@gmail.com','Noida','UP',987654321),
(102,'Rahul',23,'rahul@gmail.com','Delhi','Delhi',987654322),
(103,'Priya',21,'priya@gmail.com','Lucknow','UP',987654323),
(104,'Amit',24,'amit@gmail.com','Kanpur','UP',987654324),
(105,'Sneha',22,'sneha@gmail.com','Mumbai','MH',987654325),
(106,'Rohit',25,'rohit@gmail.com','Pune','MH',987654326),
(107,'Anjali',23,'anjali@gmail.com','Jaipur','RJ',987654327),
(108,'Vikas',22,'vikas@gmail.com','Patna','BR',987654328),
(109,'Neha',24,'neha@gmail.com','Bhopal','MP',987654329),
(110,'Karan',21,'karan@gmail.com','Chandigarh','PB',987654330),
(111,'Pooja',22,'pooja@gmail.com','Agra','UP',987654331),
(112,'Rakesh',23,'rakesh@gmail.com','Meerut','UP',987654332),
(113,'Nisha',24,'nisha@gmail.com','Indore','MP',987654333),
(114,'Deepak',25,'deepak@gmail.com','Surat','GJ',987654334),
(115,'Komal',22,'komal@gmail.com','Ahmedabad','GJ',987654335),
(116,'Arjun',23,'arjun@gmail.com','Hyderabad','TS',987654336),
(117,'Megha',21,'megha@gmail.com','Chennai','TN',987654337),
(118,'Saurabh',24,'saurabh@gmail.com','Kolkata','WB',987654338),
(119,'Riya',22,'riya@gmail.com','Bhubaneswar','OD',987654339),
(120,'Manish',23,'manish@gmail.com','Dehradun','UK',987654340);

INSERT INTO DEPARTMENT VALUES
(1,101,'HR','Pune'),
(2,102,'IT','Bangalore'),
(3,103,'Finance','Delhi'),
(4,104,'Marketing','Pune'),
(5,105,'HR','Bangalore'),
(6,106,'IT','Delhi'),
(7,107,'Finance','Pune'),
(8,108,'Marketing','Bangalore'),
(9,109,'HR','Delhi'),
(10,110,'IT','Pune'),
(11,111,'Finance','Bangalore'),
(12,112,'Marketing','Delhi'),
(13,113,'HR','Pune'),
(14,114,'IT','Bangalore'),
(15,115,'Finance','Delhi'),
(16,116,'Marketing','Pune'),
(17,117,'HR','Bangalore'),
(18,118,'IT','Delhi'),
(19,119,'Finance','Pune'),
(20,120,'Marketing','Bangalore');

CREATE TABLE ACCOUNTS(
      emp_id INT,
	  FOREIGN KEY(emp_id) REFERENCES EMPDATA(emp_id),
      DEPT_ID INT,
      FOREIGN KEY(DEPT_ID) REFERENCES DEPARTMENT(DEPT_ID),
      Name_emp VARCHAR(50),
      Dept_name VARCHAR(10),
      Salary_id VARCHAR(20),
      Salary_amt INT NOT NULL);

INSERT INTO ACCOUNTS
(emp_id, DEPT_ID, Name_emp, Dept_name, Salary_id, Salary_amt)
VALUES
(101,1,'Abhijeet','HR','SAL101',45000),
(102,2,'Rahul','IT','SAL102',60000),
(103,3,'Priya','Finance','SAL103',55000),
(104,4,'Amit','Marketing','SAL104',50000),
(105,5,'Sneha','HR','SAL105',47000),
(106,6,'Rohit','IT','SAL106',70000),
(107,7,'Anjali','Finance','SAL107',58000),
(108,8,'Vikas','Marketing','SAL108',52000),
(109,9,'Neha','HR','SAL109',48000),
(110,10,'Karan','IT','SAL110',65000),
(111,11,'Pooja','Finance','SAL111',56000),
(112,12,'Rakesh','Marketing','SAL112',51000),
(113,13,'Nisha','HR','SAL113',49000),
(114,14,'Deepak','IT','SAL114',72000),
(115,15,'Komal','Finance','SAL115',59000),
(116,16,'Arjun','Marketing','SAL116',53000),
(117,17,'Megha','HR','SAL117',50000),
(118,18,'Saurabh','IT','SAL118',68000),
(119,19,'Riya','Finance','SAL119',57000),
(120,20,'Manish','Marketing','SAL120',54000);
      
SELECT * FROM DEPARTMENT D WHERE Dept_name="HR";
SELECT * FROM ACCOUNTS;

SELECT E.emp_id, E.Name_emp, E.EMAIL, E.City, D.DEPT_ID, D.OFFICE_CITY, A.Salary_id, A.Salary_amt FROM EMPDATA E 
LEFT JOIN DEPARTMENT D ON E.emp_id=D.emp_id
LEFT JOIN ACCOUNTS A ON E.emp_id=A.emp_id;


