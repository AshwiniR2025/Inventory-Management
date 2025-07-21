create database test_env
use test_env
select * from [dbo].[Test+Environment+Inventory+Dataset];
select Distinct product_ID from [dbo].[Products]



--left join products table and test environment inventory dataset
select  a.Order_Date_DD_MM_YYYY , a.Product_ID , a.Availability , a.Demand , b.Product_Name , b.Unit_Price
from [dbo].[Test+Environment+Inventory+Dataset] as a
left join [dbo].[Products] as b 
on a.product_ID = b.product_ID


--create new table
CREATE TABLE dbo.Final_table (
    Order_Date_DD_MM_YYYY DATE,
    Product_ID INT,
    Availability INT,
    Demand INT,
    Product_Name NVARCHAR(100),
    Unit_Price DECIMAL(10,2)
);
--insert the resultant into newly created table
insert into Final_table select * from (  select  a.Order_Date_DD_MM_YYYY , a.Product_ID , a.Availability , a.Demand , b.Product_Name , b.Unit_Price
                 from [dbo].[Test+Environment+Inventory+Dataset] as a
                 left join [dbo].[Products] as b 
                 on a.product_ID = b.product_ID ) x

select * from Final_table

create database PROD
use PROD
Select * from [dbo].[Prod+Env+Inventory+Dataset]
Select * from [dbo].[Products]

select distinct  order_Date_DD_MM_YYYY 
from  [dbo].[Prod+Env+Inventory+Dataset]
where order_Date_DD_MM_YYYY is null or order_Date_DD_MM_YYYY = ' '


select distinct  Product_ID
from  [dbo].[Prod+Env+Inventory+Dataset]
order by Product_ID asc

--here product id is 22 where as actaul product id is 22 so here data is misrepresented 
--21--> 7  22-->11

update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 7
where Product_ID = 21


update [dbo].[Prod+Env+Inventory+Dataset]
set Product_ID = 11
where Product_ID = 22

select distinct Demand from [dbo].[Prod+Env+Inventory+Dataset]

--left join products table and Product environment inventory dataset
select  a.Order_Date_DD_MM_YYYY , a.Product_ID , a.Availability , a.Demand , b.Product_Name , b.Unit_Price
from [dbo].[Prod+Env+Inventory+Dataset]
as a
left join [dbo].[Products] as b 
on a.product_ID = b.product_ID

--create new table
CREATE TABLE dbo.Final_table (
    Order_Date_DD_MM_YYYY DATE,
    Product_ID INT,
    Availability INT,
    Demand INT,
    Product_Name NVARCHAR(100),
    Unit_Price DECIMAL(10,2)
);
--insert the resultant into newly created table
insert into Final_table select * from (  select  a.Order_Date_DD_MM_YYYY , a.Product_ID , a.Availability , a.Demand , b.Product_Name , b.Unit_Price
                 from [dbo].[Prod+Env+Inventory+Dataset] as a
                 left join [dbo].[Products] as b 
                 on a.product_ID = b.product_ID ) x

select * from Final_table