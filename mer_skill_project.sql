create database meri_skill

select top 10 *
from project

alter table project
alter column Order_Date Date

--TOTAL SALES
select
round(sum(Sales), 2) total_sales
from project


--TOTAL SALES BY CITY
select City
, round(sum(Sales), 2) as total_sales
from project
group by City
order by total_sales DESC



--TOP 5 HIGHEST SALES PORODUCT
select top 5 Product
, round(sum(Quantity_Ordered * Price_Each), 0)
total_sales
from project
group by Product
order by total_sales desc


--TOP 5 MOST ORDERED PRODUCT
select top 5
Product
, sum(Quantity_Ordered) total_order
from project
group by Product
order by total_order desc


--TOTAL QUANTITY ORDERED
select 
sum(Quantity_Ordered)  total_quantity_ordered
from project


--TOTAL SALES BY month_year
select
Product
, format(Order_Date, 'MM-yyyy') as Month
, round(sum(sales), 2) total_sales
from project
where Product = 'Macbook Pro Laptop'
group by 
Product
, format(Order_Date, 'MM-yyyy')
order by Month desc


--TOTAL ORDER PLACED
select
count(Order_Id) 
total_order_placed
from project

