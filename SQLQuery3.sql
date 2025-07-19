
select Item_Type , Item_MRP
from [store].[dbo].[Store Sale Data SQL]


select top(10) * 
from [store].[dbo].[Store Sale Data SQL]
where Item_Type = 'Dairy'

--SQL PROJECT

--Qs.1
select item_identifier
from [store].[dbo].[Store Sale Data SQL]

--Qs.2
select count(*) as item_identifier
from [store].[dbo].[Store Sale Data SQL]

--Qs.3
select max(item_weight) as item_weight
from [store].[dbo].[Store Sale Data SQL]

--Qs.4	
select min(item_weight) as item_weight
from [store].[dbo].[Store Sale Data SQL]

--Qs.5
select avg(item_weight) as item_weight
from [store].[dbo].[Store Sale Data SQL]

--Qs.6
SELECT COUNT(*) AS Low_Fat_Count
FROM[store].[dbo].[Store Sale Data SQL]
WHERE Item_Fat_Content = 'Low Fat';

--Qs.7
SELECT COUNT(*) AS regular_Fat_Count
FROM[store].[dbo].[Store Sale Data SQL]
WHERE Item_Fat_Content = 'regular';

--Qs.8
select max(item_mrp) as item_mrp
from [store].[dbo].[Store Sale Data SQL]

--Qs.9
select min(item_mrp) as item_mrp
from [store].[dbo].[Store Sale Data SQL]

--Qs.10
SELECT Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP
FROM [store].[dbo].[Store Sale Data SQL]
WHERE Item_MRP > 200;

--Qs.11
SELECT MAX(Item_MRP) AS Maximum_MRP
FROM[store].[dbo].[Store Sale Data SQL]
WHERE Item_Fat_Content = 'Low Fat';

--Qs.12
SELECT MIN(Item_MRP) AS Minimum_MRP
FROM [store].[dbo].[Store Sale Data SQL]
WHERE Item_Fat_Content = 'Low Fat';

--Qs.13
SELECT *
FROM [store].[dbo].[Store Sale Data SQL]
WHERE Item_MRP BETWEEN 50 AND 100;

--Qs.14
SELECT DISTINCT Item_Fat_Content
FROM [store].[dbo].[Store Sale Data SQL]

--Qs.15
SELECT DISTINCT item_type
FROM [store].[dbo].[Store Sale Data SQL]

--Qs.16
SELECT *
FROM [store].[dbo].[Store Sale Data SQL]
ORDER BY Item_MRP DESC;

--Qs.17
SELECT *
FROM [store].[dbo].[Store Sale Data SQL]
ORDER BY Item_Outlet_Sales ASC;
																
--Qs.18
SELECT *
FROM [store].[dbo].[Store Sale Data SQL]
ORDER BY Item_Type ASC;

--Qs.19
SELECT *
FROM [store].[dbo].[Store Sale Data SQL]
WHERE Item_Type IN ('Dairy', 'Meat');

--Qs.20
SELECT DISTINCT Outlet_Size
FROM [store].[dbo].[Store Sale Data SQL]

--Qs.21
SELECT DISTINCT Outlet_Location_Type
FROM [store].[dbo].[Store Sale Data SQL]

--Qs.22
SELECT DISTINCT Outlet_Type
FROM [store].[dbo].[Store Sale Data SQL]

--Qs.23
SELECT Item_Type, COUNT(*) AS Item_Count
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type
ORDER BY Item_Count DESC;

--Qs.24
SELECT Outlet_Size, COUNT(*) AS Item_Count
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Size
ORDER BY Item_Count ASC;

--Qs.25



--Qs.26
SELECT Outlet_Type, COUNT(*) AS Item_Count
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Type
ORDER BY Item_Count DESC;

--Qs.27
SELECT Outlet_Location_Type, COUNT(*) AS Item_Count
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Location_Type
ORDER BY Item_Count DESC;

--Qs.28
SELECT Item_Type, MAX(Item_MRP) AS Maximum_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.29
SELECT Item_Type, min(Item_MRP) AS Maximum_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.30
SELECT Outlet_Establishment_Year, MIN(Item_MRP) AS Minimum_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Establishment_Year
ORDER BY Minimum_MRP DESC;

--Qs.31
SELECT Outlet_Establishment_Year, MAX(Item_MRP) AS Max_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Establishment_Year
ORDER BY Max_MRP DESC;

--Qs.32
SELECT Outlet_Size, AVG(Item_MRP) AS Average_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Size
ORDER BY Average_MRP DESC;

--Qs.33
SELECT Outlet_Size, AVG(Item_MRP) AS Average_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Size;

--Qs.34
SELECT Outlet_Type, AVG(Item_MRP) AS Average_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Type
ORDER BY Average_MRP ASC;

--Qs.35
SELECT Outlet_Type, MAX(Item_MRP) AS Max_MRP
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Type;

--Qs.36
SELECT Item_Type, MAX(Item_Weight) AS Max_Weight
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.37
SELECT Outlet_Establishment_Year, MAX(Item_Weight) AS Max_Weight
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Establishment_Year;

--Qs.38
SELECT Outlet_Type, MIN(Item_Weight) AS Min_Weight
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Type;

--Qs.39
SELECT Outlet_Location_Type, AVG(Item_Weight) AS Average_Weight
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Location_Type
ORDER BY Average_Weight DESC;

--Qs.40
SELECT Item_Type, MAX(Item_Outlet_Sales) AS Max_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.41
SELECT Item_Type, min(Item_Outlet_Sales) AS min_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.42
SELECT Outlet_Establishment_Year, MIN(Item_Outlet_Sales) AS Min_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Establishment_Year;

--Qs.43
SELECT Outlet_Establishment_Year, MAX(Item_Outlet_Sales) AS Max_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Establishment_Year
ORDER BY Max_Sales DESC;

--Qs.44
SELECT Outlet_Size, AVG(Item_Outlet_Sales) AS Average_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Size
ORDER BY Average_Sales DESC;

--Qs.45
SELECT Outlet_Size, AVG(Item_Outlet_Sales) AS Average_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Size;

--Qs.46
SELECT Outlet_Type, AVG(Item_Outlet_Sales) AS Average_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Type;

--Qs.47
SELECT Outlet_Type, max(Item_Outlet_Sales) AS max_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Outlet_Type;

--Qs.48



--Qs.49
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.50



--Qs.51
SELECT Item_Fat_Content, SUM(Item_Outlet_Sales) AS Total_Sales
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Fat_Content;

--Qs.52
SELECT Item_Type, MAX(Item_Visibility) AS Max_Visibility
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.53
SELECT Item_Type, Min(Item_Visibility) AS Min_Visibility
FROM [store].[dbo].[Store Sale Data SQL]
GROUP BY Item_Type;

--Qs.54
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM [store].[dbo].[Store Sale Data SQL]
WHERE Outlet_Location_Type = 'Tier 1'
GROUP BY Item_Type;

--Qs.55
SELECT Item_Type, SUM(Item_Outlet_Sales) AS Total_Sales
FROM [store].[dbo].[Store Sale Data SQL]
WHERE Item_Fat_Content IN ('Low Fat', 'LF')
GROUP BY Item_Type;










































