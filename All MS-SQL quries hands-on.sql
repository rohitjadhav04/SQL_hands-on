create database company

------------------------------------------------------------CREATE People Table-------------------------------------------------------------------------------

CREATE TABLE people (
    emp_id INT IDENTITY(1,1) PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    department VARCHAR(50),
    date_of_joining DATE,
    salary DECIMAL(10, 2),
    place VARCHAR(50)
);



INSERT INTO people(firstname,lastname,department,date_of_joining,salary,place) VALUES
('Rohit','jadhav','IT','2023-07-20',55000.00,'Airoli')

INSERT INTO people(firstname,lastname,department,date_of_joining,salary,place) VALUES
('Vaibhav','patil','Finance','2022-07-20',65000.00,'thane'),
('John', 'Doe', 'HR', '2020-01-15', 50000.00, 'New York'),
('Jane', 'Smith', 'Finance', '2019-07-22', 60000.00, 'Los Angeles'),
('Michael', 'Johnson', 'Marketing', '2021-03-10', 55000.00, 'Chicago'),
('Emily', 'Williams', 'IT', '2018-11-05', 70000.00, 'San Francisco'),
('William', 'Brown', 'Sales', '2022-05-02', 48000.00, 'Dallas'),
('Olivia', 'Jones', 'HR', '2019-09-18', 52000.00, 'Houston'),
('James', 'Miller', 'Finance', '2021-06-30', 65000.00, 'Boston'),
('Sophia', 'Davis', 'Marketing', '2020-02-12', 58000.00, 'Seattle'),
('Robert', 'Garcia', 'IT', '2019-08-25', 72000.00, 'Miami'),
('Emma', 'Rodriguez', 'Sales', '2018-12-17', 50000.00, 'Phoenix'),
('David', 'Martinez', 'HR', '2022-04-08', 55000.00, 'San Diego'),
('Ava', 'Hernandez', 'Finance', '2021-01-05', 60000.00, 'Denver'),
('Joseph', 'Lopez', 'Marketing', '2020-10-20', 67000.00, 'San Antonio'),
('Mia', 'Gonzalez', 'IT', '2019-06-14', 68000.00, 'Portland'),
('Charles', 'Perez', 'Sales', '2018-09-30', 51000.00, 'Austin'),
('Abigail', 'Turner', 'HR', '2022-03-21', 53000.00, 'Nashville'),
('Daniel', 'Carter', 'Finance', '2021-02-14', 62000.00, 'Memphis'),
('Emily', 'Phillips', 'Marketing', '2020-08-27', 59000.00, 'Charlotte'),
('Anthony', 'Rogers', 'IT', '2019-05-09', 71000.00, 'Las Vegas'),
('Grace', 'Reed', 'Sales', '2018-07-03', 49000.00, 'San Jose'),
('Oliver', 'Cook', 'HR', '2022-02-25', 54000.00, 'Indianapolis'),
('Scarlett', 'Bailey', 'Finance', '2021-05-19', 63000.00, 'Columbus'),
('Aiden', 'Bell', 'Marketing', '2020-03-08', 66000.00, 'Fort Worth'),
('Lucas', 'Murphy', 'IT', '2019-09-12', 69000.00, 'Jacksonville'),
('Chloe', 'Rivera', 'Sales', '2018-11-04', 52000.00, 'San Francisco'),
('Madison', 'Cooper', 'HR', '2022-01-11', 56000.00, 'San Antonio'),
('Henry', 'Richardson', 'Finance', '2021-04-22', 64000.00, 'Seattle'),
('Ella', 'Cox', 'Marketing', '2020-07-15', 61000.00, 'Phoenix'),
('Leo', 'Howard', 'IT', '2019-04-18', 73000.00, 'Los Angeles'),
('Aria', 'Ward', 'Sales', '2018-06-29', 53000.00, 'Denver'),
('Carter', 'Torres', 'HR', '2022-01-02', 57000.00, 'Chicago'),
('Luna', 'Peterson', 'Finance', '2021-04-11', 67000.00, 'Dallas'),
('Mason', 'Gray', 'Marketing', '2020-06-04', 64000.00, 'San Francisco'),
('Layla', 'Ramirez', 'IT', '2019-03-27', 70000.00, 'Houston'),
('Sebastian', 'James', 'Sales', '2018-05-12', 54000.00, 'Miami'),
('Scarlett', 'Watson', 'HR', '2022-03-15', 58000.00, 'Phoenix'),
('Victoria', 'Brooks', 'Finance', '2021-06-28', 65000.00, 'Austin'),
('Joseph', 'Sanders', 'Marketing', '2020-09-23', 67000.00, 'Boston'),
('Zoey', 'Barnes', 'IT', '2019-02-07', 69000.00, 'San Diego');

select * from people

--------------------------------------------------------------------DISTINCT---------------------------------------------------------------------

--SELECT DISTINCT FROM COLUMN 'PLACE'

SELECT DISTINCT(place) FROM people

--SELECT DISTINCT FROM COLUMN 'department'

SELECT DISTINCT(department) FROM people


------------------------------------------------------------------RENAME COLUMN------------------------------------------------------------------
EXEC sp_rename 'table.old_col','New col name','COLUMN'

EXEC sp_rename 'people.date_of_joining','DOJ','COLUMN'



------------------------------------------------------Create the "company" table---------------------------------------------------------------
CREATE TABLE company (
    emp_id INT PRIMARY KEY,
    dept VARCHAR(255),
    class VARCHAR(255),
    FOREIGN KEY (emp_id) REFERENCES people(emp_id)
);

SELECT * FROM company


-- Insert sample records into the "company" table
INSERT INTO company (emp_id, dept, class) VALUES
(1, 1, 'Lower Class'),
(2, 5, 'Middle Class'),
(3, 10, 'Higher Class'),
(4, 20, 'Rich'),
(5, 35, 'Middle Class');

SELECT * FROM company

--UPDATE command on Company table

UPDATE company
SET dept='IT'
WHERE emp_id=1

UPDATE company
SET dept='Sales'
WHERE emp_id=2

UPDATE company
SET dept='Marketing'
WHERE emp_id=3

UPDATE company
SET dept='HR'
WHERE emp_id=4

UPDATE company
SET dept='Finance'
WHERE emp_id=5

UPDATE Fav
SET age=25
WHERE sr_no=8

UPDATE Fav
SET Looks_Rating=10
WHERE sr_no=8

SELECT * FROM company

SELECT * FROM Fav


----------------------------------------------Create sample table to perform some operations---------------------------------------------------

CREATE TABLE Fav (
    sr_no INT PRIMARY KEY,
    firstname VARCHAR(50),
    lastname VARCHAR(50),
    age INT,
    hobby VARCHAR(100),
    contact_number VARCHAR(15),
    birth_date DATE
);

-- Insert 10 sample records with Indian names into the table
INSERT INTO Fav(sr_no, firstname, lastname, age, hobby, contact_number, birth_date)
VALUES
(1, 'Diya', 'Mirza', 30, 'Reading', '1234567890', '1993-05-15'),
(2, 'Ananya', 'Pandey', 28, 'Painting', '9876543210', '1995-08-10'),
(3, 'Rashmi', 'Desai', 35, 'Traveling', '7778889999', '1988-12-05'),
(4, 'Disha', 'Patni', 25, 'Swimming', '5554443333', '1997-02-20'),
(5, 'Shraddha', 'Kapoor', 32, 'Photography', '2221110000', '1990-09-30'),
(6, 'Isha', 'Gupta', 27, 'Cooking', '6667778888', '1996-11-25'),
(7, 'Sharvari', 'Wagh', 29, 'Sports', '4445556666', '1994-06-12'),
(8, 'Sara', 'Tendulkar', 33, 'Dancing', '1112223333', '1989-07-08'),
(9, 'Tara', 'Sutaria', 31, 'Gardening', '9998887777', '1991-04-18'),
(10, 'Avnit', 'Kaur', 26, 'Singing', '3332221111', '1996-03-22');

SELECT * FROM Fav

--Add new column (ALTER)

ALTER TABLE Fav
ADD Rating VARCHAR(255)

--change data type of column
ALTER TABLE Fav
ALTER COLUMN Rating Int


-----------------------------------------------------UPDATE VALUES IN Rating column------------------------------------------------------------

UPDATE Fav
SET Rating=8
Where sr_no=1

UPDATE Fav
SET Rating=5
Where sr_no=2

UPDATE Fav
SET Rating=11
Where sr_no=3

UPDATE Fav
SET Rating=10
Where sr_no=4

UPDATE Fav
SET Rating=10
Where sr_no=5

UPDATE Fav
SET Rating=10
Where sr_no=6

UPDATE Fav
SET Rating=8
Where sr_no=7

UPDATE Fav
SET Rating=7
Where sr_no=8

UPDATE Fav
SET Rating=8
Where sr_no=9

UPDATE Fav
SET Rating=8
Where sr_no=10

UPDATE Fav
SET firstname='Prachi'
WHERE sr_no=3

SELECT * FROM Fav

--Rename column name
/*
EXEC sp_rename 'table.old_col,'New col name','COLUMN' */
EXEC sp_rename 'Fav.Rating', 'Looks_Rating', 'COLUMN';


--DELETE command

DELETE FROM Fav 
WHERE firstname='Ananya'

SELECT * FROM Fav


--WHERE CLAUSE With comparison operator

SELECT firstname,lastname,hobby,Looks_Rating from Fav
WHERE Looks_Rating>8

SELECT firstname,lastname From fav
Where Looks_Rating>=8

---------------------------------------------------Where With Logical Operator-----------------------------------------------------------------
--AND Operator

SELECT firstname,lastname From Fav
where looks_rating>8 AND Hobby='Traveling'

--OR operator
SELECT firstname,lastname From Fav
where looks_rating>8 OR Hobby='Traveling' OR Hobby='Reading'

--NOT operator

SELECT firstname,lastname From Fav
where looks_rating<>8 --We also can use != instaed of <> as not equal to.



---------------------------------------SPECIAL OPERATOR--> Null,ISNULL,DISTINCT,IN,BETWEEN,LIKE.----------------------------------------------------

--Null:- Check whether the column is Null  or Not

Select * FROM Fav
WHERE firstname IS NULL

--IS NOT NULL

Select * FROM Fav
WHERE firstname IS NOT NULL


--ISNULL:- Check atrribute value is NULL

SELECT * FROM Fav 
Where contact_number IS NULL

--DISTINCT :- Gives unique values from Attribute

SELECT DISTINCT(Hobby) FROM Fav

--IN:- Check attribute value match within a value set.

SELECT * FROM Fav
WHERE Hobby IN ('Traveling','Reading')

--BETWEEN :- Check attribute value within a range

SELECT firstname,lastname,birth_date FROM Fav
WHERE birth_date BETWEEN ('1995-11-01') AND ('2000-04-11')

--NOT BETWEEN

SELECT firstname,lastname,birth_date FROM Fav
WHERE birth_date NOT BETWEEN ('1995-11-01') AND ('2000-04-11')

--LIKE :- 

SELECT * FROM Fav
WHERE firstname LIKE 'ISHA'

--LIKE Operator is also use with WILDCARD operators such as % and _ 

--LIKE using %

SELECT * FROM Fav
WHERE firstname LIKE 'I%' 

SELECT * FROM Fav
WHERE lastname LIKE 'PAT%'

--LIKE using _

SELECT * FROM Fav
WHERE Hobby LIKE '_r_______'

SELECT * FROM Fav
WHERE Hobby LIKE 'S__g__g'


--LIKE using both % and _

SELECT * FROM Fav
WHERE firstname LIKE '%sh__'

SELECT * FROM Fav
WHERE firstname LIKE '_sh%'



-----------------------------------------------------AGGREGATION FUCNTION-----------------------------------------------------------------------
/*                                                   MIN,MAX,AVG,COUNT,SUM                                                                   */


--MIN()

SELECT MIN(looks_rating) as minimum FROM Fav

--MAX()

SELECT MAX(looks_rating) as minimum FROM Fav

--AVG

SELECT AVG(looks_rating) as minimum FROM Fav

--COUNT()

SELECT COUNT(Firstname) as minimum FROM Fav

--SUM()

SELECT SUM(looks_rating) as minimum FROM Fav

-----------------------------------------------------------GROUP BY CLAUSE-----------------------------------------------------------------------


--Q1: I want to know tha how many people are working in every department.
SELECT department, COUNT(department) as count FROM people
GROUP BY department

--Q2: List down the count birth year wise.
SELECT YEAR(DOJ) AS [Year],COUNT(DOJ) AS [Count] FROM people
GROUP BY YEAR(DOJ)

--Q3: List down the count place wise
SELECT COUNT(place) AS [Count],place FROM people
GROUP BY place


------------------------------------------------------------------ORDER BY CLAUSE----------------------------------------------------------------

--Q1: list down the records where salary from higher to lower.

SELECT * FROM people
ORDER BY salary ASC

--Q2: Retrieve the salary of HR depatment in Descending order

SELECT * FROM people
WHERE department='HR'
ORDER BY salary DESC

--------------------------------------------------------------UNION and UNION ALL----------------------------------------------------------------
--UNION: When you want to combine the result of multiple queries and remove dupilcate rows from final result.
select emp_id,department from people
UNION
select emp_id,dept from company

select emp_id,department from people
UNION
select emp_id,dept from company


--UNION ALL: When you want to combine the result of the multiple queries.

select emp_id,department from people
UNION ALL
select emp_id,dept from company


---------------------------------------------Aggregate function with GROUP BY------------------------------------------------------------------

SELECT MAX(looks_rating) as rating,firstname,lastname FROM Fav
GROUP BY firstname,lastname


SELECT MIN(looks_rating) as rating,firstname,lastname FROM Fav
GROUP BY firstname,lastname


---------------------------------------------------------------HAVING CLAUSE---------------------------------------------------------------------
/* When we have to  specify any condition with aggrigate function then use HAVING CLAUSE.
 HAVING CLAUSE comes after group by clause.
*/ 

SELECT firstname,AVG(Looks_Rating),age FROM Fav
GROUP BY age,firstname
HAVING COUNT(Looks_Rating)>9


------------------------------------------------------COPY table to another table---------------------------------------------------------------

--Here SQL create new table using structure of new table.

/* SYNTAX:
SELECT * into new table name FROM old table name
*/

SELECT * into people_copy FROM people

SELECT * FROM people_copy

select * from company

---------------------------------------------------------------IN OPERATOR------------------------------------------------------------------------


SELECT * FROM people
WHERE place IN ('airoli','Boston','Miami')

--IN operator using subquery

SELECT * FROM people
WHERE department IN (SELECT dept FROM company WHERE department IN ('IT','HR'))





---------------------------------------------------------------------VIEWS------------------------------------------------------------------------

CREATE VIEW Fav2
AS 
SELECT firstname,lastname,birth_date FROM Fav
WHERE YEAR(birth_date) BETWEEN '1995' and '2000'


------------------------------------------------------------------Distinct------------------------------------------------------------------------

SELECT DISTINCT(place) FROM people


-----------------------------------------------------------EXIST,NOT EXIST------------------------------------------------------------------------

SELECT *
FROM people
WHERE EXISTS (SELECT * FROM company WHERE company.dept=people.department AND dept='HR')


SELECT *
FROM people
WHERE NOT EXISTS (SELECT * FROM company WHERE company.dept=people.department AND dept='HR')

select * from company

select * from Fav



---------------------------------------------------------------SQL JOINS------------------------------------------------------------------------
---------------------------------------------JOIN:- Use to retrieve data from multiple tables----------------------------------------------------

--INNER JOIN:- Use to retrieve common data from both tables.

--Q1: List down firstname,lastname,department column with their class

SELECT p.firstname,p.lastname,p.department,c.class FROM people p
INNER JOIN company c
ON c.dept=p.department

--Q2: retrieve the total number of department class wise

SELECT p.department,Count(c.class) as [Count],c.class FROM people p
INNER JOIN company c
ON p.department=c.dept
GROUP BY p.department,c.class


-----------------------------------------------------------------LEFT JOIN------------------------------------------------------------------------

SELECT p.firstname,p.lastname,p.department,c.class FROM people p
LEFT JOIN company c
ON c.dept=p.department

-----------------------------------------------------------------OUTER JOIN-----------------------------------------------------------------------

SELECT p.firstname,p.lastname,p.department,c.class FROM people p
RIGHT JOIN company c
ON c.dept=p.department


------------------------------------------------------------FULL OUTER JOIN-----------------------------------------------------------------------

SELECT p.firstname,p.lastname,p.department,c.class FROM people p
FULL OUTER JOIN company c
ON c.dept=p.department


------------------------------------------------------------SELF JOIN-----------------------------------------------------------------------------

SELECT p1.firstname,p1.lastname,p2.place
FROM people p1,people p2
WHERE p1.department=p2.department



-----------------------------------------------------------DATE Functions-------------------------------------------------------------------------

--GETDATE()

--Return the current date.
--Syntax:
        SELECT GETDATE() as current_datee

--I want to change the way date and time is printing.
--CONVERT() SYNTAX
--       CONVERT(DATATYPE,DATE,STYLE_NUMBER)

SELECT CONVERT(VARCHAR,GETDATE(),1)
SELECT CONVERT(VARCHAR,GETDATE(),2)
SELECT CONVERT(VARCHAR,GETDATE(),3)
SELECT CONVERT(VARCHAR,GETDATE(),103)


--DATEDIFF()
-- it returns difference between the 2 dates in terms of days,months,years etc.
--It takes 3 parameters
--Syntax:-
--SELECT DATEDIFF(YY,DATE1,DATE2)
  SELECT DATEDIFF(mm,'5/6/1997',GETDATE())
--SELECT DATEDIFF(YY,'11/4/2000','26/7/2023')       --ERROR

--What is the experience of each customer.

SELECT firstname,lastname,department,date_of_joining,DATEDIFF(YY,date_of_joining,GETDATE()) as Experinece FROM people

--List down the customer name who opend the account this/current year.

SELECT firstname,lastname,department,date_of_joining,DATEDIFF(YY,date_of_joining,GETDATE()) as Experinece FROM people
WHERE DATEDIFF(YY,date_of_joining,GETDATE())=2

--people who join comapany in last month

SELECT firstname,lastname,department,date_of_joining,DATEDIFF(YY,date_of_joining,GETDATE()) AS experience FROM people
WHERE DATEDIFF(MM,date_of_joining,GETDATE())=1

--DATEPART()
/* 
It returns the part of the date.
It returns interger.
It takes two aurgument.
syntax:
        SELECT DATEPART(YY,date)
*/

         SELECT firstname,DATEPART(YY,DOJ) as only_year FROM people

         SELECT firstname,DATEPART(YY,DOJ) as only_year FROM people


         SELECT firstname,DATEPART(YY,DOJ) as only_year FROM people
		 WHERE DATEPART(YY,DOJ) >2018


--I want year wise number of joining.

SELECT DATEPART(YY,DOJ) AS year_no,COUNT(*) as CNT
FROM people
GROUP BY DATEPART(YY,DOJ)


--list down who joined company in 2020

SELECT firstname,lastname,department,DATEPART(YY,DOJ) as [year of joining] FROM people
WHERE DATEPART(YY,DOJ)=2020



--DATENAME():

/*
It returns the name of the day or month.
It always returns the string.
It takes two aurgument
Syntax:
 SELECT DATENAME(MM,date) FROM table_name
*/

 SELECT DATENAME(MM,'2020/4/12') AS [month]

 SELECT DATENAME(DD,'2020/4/12') AS [day]

 SELECT DATENAME(DW,'2020/4/12') AS [day_name]


 --list down the people who have opened their account in monday

 
 SELECT firstname,lastname,department,DATENAME(DW,DOJ) AS [DAY] FROM people
 WHERE DATENAME(DW,DOJ) = 'monday'


 SELECT firstname,lastname,department,DATENAME(DW,DOJ) AS [DAY] FROM people
 WHERE DATENAME(DW,DOJ) = 'monday' OR DATENAME(DW,DOJ) = 'tuesday'



--DATEADD():
/*
It adds/substract the days,month,year to the given date
it takes 3 aurgument
SYNTAX:
SELECT DATEADD(DD,-40,DATE)
*/

SELECT DATEADD(DD,-40,GETDATE())

SELECT DATEADD(YY,-40,GETDATE())

		select * from people



----------------------------------------------------------Store Procedure-------------------------------------------------------------------------


---Store Procedure

--Create procedure
--Using user define.
create procedure people1
as
select firstname,salary from people
go


select * from people1
exec people1

--OR
--using T sql
create procedure people2
as
BEGIN
select firstname,department,salary from people
order by salary
END;
 
EXEC people2

--Create SP using one parameter

create procedure people3
as
BEGIN
select firstname,department,salary from people
order by salary
END;

--execute procedure

EXEC people3

--Procedure with multiple parameters

create procedure People4
as
begin
select firstname,place from people
order by place
end

exec people4



