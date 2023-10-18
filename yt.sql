--- Create Database ---

Create database Test_db

--Creting a new Table---

CREATE table sample_table
(
column1 nvarchar(max),
column2 nvarchar(max)
)

Select * from sample_table

---Insert the data ---
INSERT INTO sample_table
VALUES
('name12','person12'),
('name15','person12')

/* BULK INSERT T-sql

1- It is only used for flat files (.txt or for csv ie any fixed delimeter)
2- The table should be created 
3- Make sure the COlumns are having suffiecnt data types used.*/

Bulk Insert [dbo].[onlinesales2]
from 'C:\Users\lenovo\Desktop\Self Sessions\Yt\Base Data\onlinesales1.csv'
WITH (
	FIELDTERMINATOR=',',
	ROWTERMINATOR='\n'
)

---View Data----

Select Invoice,Quantity,Price from [dbo].[onlinesales1]

Select * from [dbo].[onlinesales2] 

---Changing the datatype of Columns---
Alter table [dbo].sample_table
Alter column column1 nvarchar(max)

-----Important SQL Commands--

UPDATE [dbo].[onlinesales2] 
SET Quantity=14
where Description ='PINK CHERRY LIGHTS'

Delete from [dbo].[onlinesales1]
Where Invoice='Invoice'

TRUNCATE table  sample_table

DROP table sample_table

----SAMPLE TABLE will be now deleted after drop statement----

---USE OF FUNCTIONS----

Select * from onlinesales1

Select COUNT(Distinct(stockcode)) from onlinesales1

Select * from onlinesales1 
where Stockcode='85123A'
order by Country DESC


