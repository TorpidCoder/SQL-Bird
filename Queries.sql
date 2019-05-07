USE ORG;
#Q-1. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table Using The Alias Name As <WORKER_NAME>.
select FIRST_NAME as WORKER_NAME from ORG.Worker

#Q-2. Write An SQL Query To Fetch “FIRST_NAME” From Worker Table In Upper Case.
select Upper(FIRST_NAME) from Worker

#Q-3. Write An SQL Query To Fetch Unique Values Of DEPARTMENT From Worker Table.
select distinct(DEPARTMENT) from Worker

#Q-4. Write An SQL Query To Print First Three Characters Of  FIRST_NAME From Worker Table.
select Substring(FIRST_NAME,1,3) as FIRSTNAME from Worker;
select FIRST_NAME as Firstname from Worker;

#Q-5. Write An SQL Query To Find The Position Of The Alphabet (‘A’) In The First Name Column ‘Amitabh’ From Worker Table.
Select INSTR(FIRST_NAME, BINARY'a') as NAME from Worker where FIRST_NAME = 'Vishal';

#Q-6. Write An SQL Query To Print The FIRST_NAME From Worker Table After Removing White Spaces From The Right Side.
Select RTRIM(FIRST_NAME) as NAME from Worker

#Q-8. Write An SQL Query That Fetches The Unique Values Of DEPARTMENT From Worker Table And Prints Its Length.
select distinct length(DEPARTMENT) from Worker

#Q-9. Write An SQL Query To Print The FIRST_NAME From Worker Table After Replacing ‘A’ With ‘A’.
select REPLACE(FIRST_NAME,'a','A') as FirstName from Worker''

#Q-10. Write An SQL Query To Print The FIRST_NAME And LAST_NAME From Worker Table Into A Single Column COMPLETE_NAME. A Space Char Should Separate Them.

Select CONCAT(FIRST_NAME, ' ', LAST_NAME) AS 'COMPLETE_NAME' from Worker;

#Q-11. Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending.
select * from Worker order by FIRST_NAME asc

#Write An SQL Query To Print All Worker Details From The Worker Table Order By FIRST_NAME Ascending And DEPARTMENT Descending.

Select * from Worker order by FIRST_NAME asc,DEPARTMENT desc;

#Q-13. Write An SQL Query To Print Details For Workers With The First Name As “Vipul” And “Satish” From Worker Table.

Select * from ORG.Worker where FIRST_NAME in ( "Vipul" ,"Satish")

#Q-14. Write An SQL Query To Print Details Of Workers Excluding First Names, “Vipul” And “Satish” From Worker Table.
select * from ORG.Worker where FIRST_NAME not in ('Vipul' ,'Satish')

Q-15. Write An SQL Query To Print Details Of Workers With DEPARTMENT Name As “Admin”.
select * from ORG.Worker where DEPARTMENT='Admin';

Q-16. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Contains ‘A’.
select * from ORG.Worker where FIRST_NAME like '%A%'

Q-17. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘A’.
select * from ORG.Worker where FIRST_NAME like '%A'

Q-18. Write An SQL Query To Print Details Of The Workers Whose FIRST_NAME Ends With ‘H’ And Contains Six Alphabets.
select * from ORG.Worker where FIRST_NAME like '%H' and length(FIRST_NAME)=6
or
Select * from Worker where FIRST_NAME like '_____h';

Q-19. Write An SQL Query To Print Details Of The Workers Whose SALARY Lies Between 100000 And 500000.
select * from ORG.Worker where SALARY Between 100000 And 500000;

Q-20. Write An SQL Query To Print Details Of The Workers Who Have Joined In Feb’2014.
select * from Worker where year(JOINING_DATE)=2014 and month(JOINING_DATE)=2

Q-21. Write An SQL Query To Fetch The Count Of Employees Working In The Department ‘Admin’.
select count(*) from Worker where DEPARTMENT = 'Admin'

Q-22. Write An SQL Query To Fetch Worker Names With
 select concat(FIRST_NAME, ' ', LAST_NAME) as NAME from worker WHERE Salary BETWEEN 50000 AND 100000;

Q-23. Write An SQL Query To Fetch The No. Of Workers For Each Department In The Descending Order.
select DEPARTMENT,count(*) from worker group by 1 order by 2 desc

Q-24. Write An SQL Query To Print Details Of The Workers Who Are Also Managers.
select w.FIRST_NAME , w.LAST_NAME from Worker w INNER JOIN Title t
ON w.WORKER_ID = t.WORKER_REF_ID where t.WORKER_TITLE = 'Manager'

Q-25. Write An SQL Query To Fetch Duplicate Records Having Matching Data In Some Fields Of A Table.
SELECT WORKER_TITLE, COUNT(*)
FROM Title
GROUP BY WORKER_TITLE
HAVING COUNT(*) > 1;

Q-26. Write An SQL Query To Show Only Odd Rows From A Table.
select * from Worker where WORKER_ID in (select WORKER_ID from Worker where WORKER_ID%2=1)

Q-27. Write An SQL Query To Show Only Even Rows From A Table.
select * from Worker where MOD(WORKER_ID,2)=0

Q-28. Write An SQL Query To Clone A New Table From Another Table.
create table Worker2(select * from Worker)
