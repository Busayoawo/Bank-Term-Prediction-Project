Create Database BankDeposit
Select * from [dbo].[BankTerm Deposit Predictions ]

---Question 1---
--Write an SQL query to count the number of married customers--
Select count (*) MarriedCustomer
from [dbo].[BankTerm Deposit Predictions ]
where marital = 'married'


---Question2---
--How can you retrieve a list of all the different education levels in the dataset?
Select distinct Education
from [dbo].[BankTerm Deposit Predictions ]

---Question 3---
--Find the maximum and minimum balance held by customers in the dataset---
Select max(balance) as Max_Balance, min(balance) as Min_Balance
from [dbo].[BankTerm Deposit Predictions ]

--Question 4---
--How can you retrieve the total number of loan granted from the dataset---
Select count (*) as Loan_granted
from [dbo].[BankTerm Deposit Predictions ]
where loan = 'yes'

---Question 5---
---Select all customers who are self employed and have a tetiary level of education---
SELECT count (*) 
FROM [dbo].[BankTerm Deposit Predictions ]
WHERE job = 'Self-Employed' AND education = 'Tertiary'

---Question 6---
---Find the average balance of customers who have defaulted on a loan---
select avg(balance) as AVG_Balance_Default
from [dbo].[BankTerm Deposit Predictions ]
where [default] = 'yes'
 
 ---Question 7---
--List the jobs and marital status of all customers who have a negative balance---
Select job,marital
from [dbo].[BankTerm Deposit Predictions ]
where balance < 0 

--Question 8---
--Query the database for the number of contacts made in the month of may---
SELECT COUNT(*) AS number_of_contacts
FROM [dbo].[BankTerm Deposit Predictions ]
WHERE MONTH = 'may'

---INTERMEDIATE QUESTIONS---
--QUESTION 1---
--Write an sql query to determine how many customers own a house and have a loan---
Select count (*) as Customers_house_Loan
from [dbo].[BankTerm Deposit Predictions ]
where housing = 'yes' and loan = 'yes'

--Question 2--
--Generate a report that shows the average duration of contacts for each 
--job role in the month of May---
 SELECT AVG(duration) AS average_duration
FROM [dbo].[BankTerm Deposit Predictions ]
WHERE MONTH = 'May'
GROUP BY job 

---Question 3---
---Find out which day of the week had the most customer contacts, 
--assume the 'day' column represents the day of the week--

---ADVANCED QUESTIONS--
--Question 1--
--Identify customers who have a negative balance and categorize them by their job and
--marital status show top 3 jobs with the highest number of such customers--
Select top 3 job, marital, count (*) as Number_Customers
from [dbo].[BankTerm Deposit Predictions ]
where balance < 0 
group by job, marital
order by Number_Customers desc

---Question 2---
--write an sql query that provides a breakdown of the 'poutcome success rate 
--per job category--

--Question 3 ---



---Classwork---
SELECT *
FROM [dbo].[BankTerm Deposit Predictions ]
WHERE marital = 'married'
    AND [default] = 'no'
    AND MONTH = 'may'
    AND loan = 'no'
    AND contact= 'cellular'

select * 
from [dbo].[BankTerm Deposit Predictions ]
where marital
and [default] = 'no'
and month = 'may'
and loan = 'no'
and contact = 'cellular'

--how do you retrieve the total number of married couple for each 
--poutcome in a table

SELECT poutcome, COUNT(*) as married_count
FROM [dbo].[BankTerm Deposit Predictions ]
WHERE marital = 'married'
GROUP BY poutcome









