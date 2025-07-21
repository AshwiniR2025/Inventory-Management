use prod
select * from `prod+env+inventory+dataset`


update `prod+env+inventory+dataset`
set `Product ID` = 7
where `Product ID` = 21


update `prod+env+inventory+dataset`
set `Product ID` = 11
where `Product ID` = 22

select * from products

CREATE TABLE new_table AS
SELECT
  a.`Order Date (DD/MM/YYYY)` AS `Order_Date_DD_MM_YYYY`,
  a.`Product ID` AS `product_id`,
  a.Availability,
  a.Demand,
  b.`Product Name` AS `product_name`,
  b.`Unit Price ($)` AS `unit_price`
FROM prod.`prod+env+inventory+dataset` as a
LEFT JOIN prod.products as b
 ON a.`Product ID` = b.`Product ID`;
 
 
 
 SELECT User, Host FROM mysql.user;
