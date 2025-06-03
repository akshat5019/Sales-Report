select * from pizza_sales;
select top 5 pizza_name , count(distinct order_id) as total_count --- top 5 pizza
from pizza_sales
group by pizza_name
order by total_count desc
select top 5 pizza_name , count(distinct order_id) as total_count --- bottom  5 pizza
from pizza_sales
group by pizza_name
order by total_count asc
select DATENAME(month , order_date)as month, count(total_price) as Monthly_Records--Montly Records
from pizza_sales
group by DATENAME(month , order_date)
order by Monthly_Records desc ;
select DATENAME(WEEKDAY , order_date)as week, count(total_price) as week_Records--WEEKDAY Records
from pizza_sales
group by DATENAME(WEEKDAY , order_date)
order by week DESC ;
SELECT top 5 pizza_name , count(distinct order_id) as famous from pizza_sales
group by pizza_name
order by famous desc ;

