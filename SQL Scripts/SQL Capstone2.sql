Create Database CapstoneProj2

Select * from [dbo].[LITA Capstone p2]


----Retrieve the total number of customers from each region
SELECT Region ,COUNT(CustomerID) AS Total_Customers
FROM [dbo].[LITA Capstone p2]
GROUP by Region;

----Find the most popular subscription type by the number of customers
SELECT SubscriptionType, COUNT(CustomerID) AS CustomerCount
FROM [dbo].[LITA Capstone p2]
GROUP BY SubscriptionType
ORDER BY CustomerCount DESC;


----Find customers who canceled their subscription within 6 months:
SELECT 
    CustomerID, 
    CustomerName,
    SubscriptionType,
    DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) AS DurationMonths
FROM [dbo].[LITA Capstone p2]
WHERE Canceled = 'True' 
    AND DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) <= 6;

----Calculate the average subscription duration for all customers
SELECT AVG(Suscription_Duration) AS AvgSubscriptionDuration
FROM[dbo].[LITA Capstone p2] ;


----Find customers with subscriptions longer than 12 months
SELECT 
    CustomerID, 
    CustomerName,
    SubscriptionType,
    DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) AS DurationMonths
FROM [dbo].[LITA Capstone p2]
WHERE Canceled = 'False' 
    AND DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) > 12;


----Calculate total revenue by subscription type
SELECT SubscriptionType, SUM(Revenue) AS TotalRevenue
FROM [dbo].[LITA Capstone p2]
GROUP BY 
    SubscriptionType;


----Find the top 3 regions by subscription cancellations

SELECT TOP 3 Region, COUNT(CustomerID) AS Cancellations
FROM [dbo].[LITA Capstone p2]
WHERE 
Canceled = 'True'
GROUP BY 
    Region
ORDER BY 
    Cancellations DESC


	----Find the total number of active and canceled subscriptions
SELECT Canceled, COUNT(CustomerID) AS SubscriptionCount
FROM [dbo].[LITA Capstone p2]
GROUP BY 
    Canceled;

