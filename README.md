# Capstone-Project2
A documentation of my personal project at LITA 

## Tables of Content
---
  - [Project Overview](#project-overview)
  - [Project Objective](#project-objective)
  - [Data Sources](#data-sources)
  - [Data Overview](#data-overview)
  - [Tools used](#tools-used)
  - [Excel Analysis](#excel-analysis)
  - [SQL Analysis](#sql-analysis)
  - [PowerBi Dashboard](#powerbi-dashboard)


### Project Topic : Customers Segmentation Analysis

### Project Overview 
---
This project focuses on analyzing customer subscription data to identify key patterns and trends in customer behavior, subscription types, and cancellations or renewals. The goal is to provide actionable insights for strategic planning using data analysis in Excel and SQL, followed by an interactive Power BI dashboard for visualization.

### Project Objective 
---
 1. Identify Customer Segments: Analyze customer data to group them by subscription behavior, types, and region.
 2. Track Subscription Patterns: Highlight popular subscription types and track customer retention.
 3. Identify Cancellations and Renewals Trends: Analyze and visualize trends in cancellations, renewal patterns, and overall customer behavior.

### Data Sources 
---
The primary source of Data used here is Capstone Data.Xls
Click on the link below to download the data

[Download here](https://drive.google.com/drive/folders/1bua5YtNOHzLaDZj8149WooEuTATttp4_)

### Data Overview 
---
The excel dataset, Customers data contains the following column :
 - Customer ID: Unique identifier for each customer.
 - Region: Customer’s geographical region.
 - Subscription Type:Contains type or plan of subscription purchased by the customer.
 - Subscription Start Date:Shows the date when the subscription started.
 - Subscription End Date: Shows the date when the subscription ended or is set to end.
 - Status: Subscription status (e.g., Active, Canceled).
 - Revenue: Revenue generated from each customer’s subscription.

### Tools used
---
 - Microsoft Excel for :
   1. For data cleaning
   2.  Advanced formulas, PivotTables, Pivot charts
   3.  Report writing
      
 - Microsoft SQL server for :
   1. Data Cleaning
   2. Quering Data
   3. Grouping Data
- PowerBi for :
  1. Data Analysis
  2. Data Visualization: Charts, Graphs, Slicers, Timelines
  3. Interactive Dashboard
  
 - Documentation: README.md, Project Report (PDF)
 - GitHub for portfolio building
### Excel Analysis
 - #### Data Cleaning in Excel :
     1. Remove Duplicate Entries:Go to the Data tab, select Remove Duplicates, and apply it on the entire Customers Data
     2. Subscription Duration : Add a new column called suscription duration.It was gotten by subtracting subscription end date from the subscription start date.
     3. Handled missing data: Checked the data to see if any cell is blank
     4. Saved the clean data and import to SQL for further analysis
      
  - #### Formulas Used 
The formulas used for the analysis and preparation of the projects are :
 - Excel Formulas :
   ``` Excel formula
   Subscription duration = Subscrtiption end date - Subscription start date
   
   Average Subscription Duration = AVERAGE (suscription duration)
   
   Average Revenue Per Customer = SUM (Revenue) /COUNTA ( Customer Id)
   
   Customer Cancellation Rate =(COUNTIF('CustomerData (2)'!G2:G33788,"TRUE")/'CustomerData (2)'!E2:E33788)
   ```
  - #### Questions
     1. Analyze customer data using pivot tables to find subscription patterns.
     2. Calculate the average subscription duration and identify the most popular subscription types.
     3. Create any other interesting reports

  - #### Exploratory Analysis using Pivot tables
    - Pivot Table 1 : Total Revenue
        1. Question : What is the total Revenue generated
        2. Setup :
             1. Value field : Revenue summarized as sum
        3. Pivot table screenshot

        ![Screenshot 2024-10-31 101537](https://github.com/user-attachments/assets/738dab42-1986-461f-a456-a43243c55e7a)
      
        4. Outcome : This pivot table shows the total sales generated during the fiscal year 2022
        
     - Pivot Table 2 : Total Customers
        1. Question : Determine the total numbers of customers the business has
        2. Setup :
             1. Value field : Customer id summarized as count
        3. Pivot table screenshot

       ![Screenshot 2024-10-31 102011](https://github.com/user-attachments/assets/3b76bada-f283-4a7b-b244-83170f13d615)
       
        4. Outcome : This pivot table shows the total sales numbers of customers the business has
            
    - Pivot Table 3 : Subscription Type by Count of Customers
      
        Objective : To understand which subscription types are most popular by analyzing the count of unique customers per subscription type.
        1. Question : What is the most popular subscription type by count of customers
        2. Set Up :
             1. Row field : Product
             2. Value field : Total sales  summarized as sum
        3. Pivot Table screenshot  
           ![Screenshot 2024-10-31 104012](https://github.com/user-attachments/assets/72c0ef1c-3159-4053-8290-456fda3612c4)
      
        5. Insights:
           1. Most Popular Subscription Types: The analysis revealed that basic subscription type had the highest number of customers contributing to approximately 50% of the total numbers of customers, indicating high customer interest or satisfaction with these types.
           2. Least Popular Subscription Types: Conversely, Standard subscription Type  had the lowest customer count, suggesting potential areas for improvement or re-evaluation.
        6. Recommendations :
           1. Focus on High-Interest Subscription Types: Allocate marketing resources towards basic Subscription Type, and consider offering additional benefits to encourage retention.
           2. Improve or Market Less Popular Subscription Types: Investigate why Standard subscription type are not attracting customers. Adjust marketing strategies, pricing, or features to increase their appeal.
      
    - Pivot Table 4 : Revenue by subscription Type
      
         Description : The purpose of this analysis is to examine revenue generated by each subscription type, helping identify which types contribute the most to overall revenue. This information provides insights into customer preferences and potential areas for growth or strategic adjustment.
        1. Question : Which subscription types generate the highest and lowest revenue, and what does this reveal about customer value per type?
        2. Set up :
             1. Row field : Suscription Type
             2. Value field : Revenue summarized as sum
        3. Pivot table

         ![Screenshot 2024-10-31 110234](https://github.com/user-attachments/assets/2ce2b0f9-852d-4b2e-9599-ee77cd30c507)
      
         4. Insights :
             1. High-Revenue Subscription Types: The analysis revealed that Basic subscription types consistently contribute a large portion of the revenue. This may indicate higher demand or premium pricing structures for these types.
             2. Low-Revenue Subscription Types: It also revealed that Standard  Subscription types generated significantly less revenue. This could imply lower popularity or reduced profitability for these options.
         5. Recommendation :
            1. Increase Investment in High-Revenue Subscriptions: Consider expanding marketing and customer retention efforts for high-revenue subscription types like Basic Subscription Type to further capitalize on customer interest.
            2. Evaluate or Reposition Low-Revenue Subscriptions: Assess pricing strategies, features, or customer appeal for Standard Subscription Types. Potential actions could include modifying features, rebranding, or offering bundled packages to enhance their attractiveness.
       
     - Pivot Table 5 : Numbers of Customers by Region
       
         Description : This analysis examines the distribution of customers across different regions, providing insights into regional performance and customer concentration. Understanding regional customer distribution helps inform targeted marketing and resource allocation strategies.

         1. Question : Which regions have the highest and lowest number of customers, and what does this reveal about regional engagement and market potential?
         2. Set up :
            1. Row Field : Region
            2. Value Field : CustomerId summarized as Count
         3. pivot Table Screenshot
            
          ![Screenshot 2024-10-31 112638](https://github.com/user-attachments/assets/57617fcf-8261-4152-8691-befd5f1043b2)
       
         5. Insights:
              1. High-Customer Regions: Regions such as East and South had the highest number of customers, indicating strong market penetration and potential brand loyalty in these areas.
              2. Low-Customer Regions: Regions like West shows a significantly lower number of customers, suggesting either a lack of awareness or potentially lower demand.
          6. Recommendations:
              1. Focus Marketing Efforts on High-Customer Regions: Continue to build on existing customer bases in high-customer regions like East and South with targeted marketing campaigns and customer engagement initiatives.
              2. Expand Outreach in Low-Customer Regions: Consider exploring marketing and outreach programs specifically aimed at lower-customer regions like the West. This could involve market research to understand regional needs and tailoring offerings to boost customer acquisition in these areas.

    - Pivot Table 6 : Total Revenue Generated by region
      
      Description: This pivot table shows total quantity by region, indicating the geographical performance of sales.
      1. Question : Which regions generate the highest revenue, and what does this indicate about regional demand and market performance?
      2. Set up :
         1. Row Field : Region
         2. Value Field : Revenue summarized by sum
      3. Pivot Table Screeenshot

         ![Screenshot 2024-10-31 114148](https://github.com/user-attachments/assets/b1d8877b-01d8-423e-8153-f594faa64aa7)

      4. Insights :
          1. High Ratio of Active Subscriptions: If active subscriptions significantly outnumber canceled ones, this suggests a stable or growing customer base with potentially high satisfaction levels.
          2. High Ratio of Canceled Subscriptions: A high cancellation rate relative to active subscriptions indicates possible issues in customer retention. This could result from factors like dissatisfaction with the service, competitive offerings, or unmet customer needs.

      5. Recommendations :
         1. For High Active Subscriptions: Focus on customer loyalty programs, referral incentives, or exclusive content to retain these subscribers and increase engagement. Explore ways to gather customer feedback regularly to maintain satisfaction.
         2. For High Canceled Subscriptions: Conduct exit surveys to understand the reasons for cancellation. Based on feedback, consider improving service offerings, implementing retention campaigns, or adjusting pricing structures to reduce cancellations.

         
     - Pivot Table 7 : Total Active to Cancelled Subscription
  
       Description :This pivot table analysis compares the total count of active subscriptions to canceled subscriptions. By examining these metrics, we gain insight into customer retention rates and the overall health of the subscription service.

        1. Question : What is the ratio of active to canceled subscriptions, and what does this indicate about customer satisfaction and retention?
        2. Set up :
          1. Row : Cancelled
          2. Value Field : CustomerId summarized as Count
        3. Pivot Table screenshot

     ![Screenshot 2024-10-31 124801](https://github.com/user-attachments/assets/bcbc8656-ce3c-4d53-a843-003568737a97)

              
       4. Insights :Analyzing monthly sales by revenue can reveal monthly sales trends. For example, if the data shows that sales revenue peaks during certain months, this could indicate seasonal demand, holiday-driven purchases, or effective promotions during those periods. Months with declining revenue might reflect off-peak seasons, potential economic impacts, or customer behavioral changes.
      5. Recommendations:During high-revenue months, consider increasing inventory and running targeted marketing campaigns to maximize sales. Discounts, bundling, or promotional offers can further boost revenue during these times.

  - ##### Calculating Key Metrics with Excel Formulas
    - Metric 1: Average Cancellation Rate

        1. Formula:
           ``` Excel Formula
              Cencellation Rate=(COUNTIF('CustomerData (2)'!G2:G33788,"TRUE")/'CustomerData (2)'!E2:E33788)
           ```

        3. ![Screenshot 2024-10-31 122054](https://github.com/user-attachments/assets/fa346487-9016-4ee3-a475-d8e766d7764d)
           
        5. Purpose: Determine average rate at which customers cancelled their subscription with time
        6. Result: Provides an average sales value per product, helping in product performance evaluation.
           
     - Metric 2: Average Revenue per Customer
        1. Formula:
            ``` Excel Formula
            Average revenue Per Customer =SUM('CustomerData (2)'!H2:H33788)/COUNTA('CustomerData (2)'!A2:A33788)
            ```
           
           
          ![Screenshot 2024-10-31 122523](https://github.com/user-attachments/assets/79165da1-0747-4092-a987-a05a7b595102)
        3. Purpose: Calculate average Revenue generated per customer.
        4. Result: This can indicate success in upselling and cross-selling strategies or that customers find value in the premium offerings.

    - Metric 3 : Average subscription Duration
        1. Formula:
            ``` Excel Formula
            Average Subscribtion Duration=AVERAGE('CustomerData (2)'!I2:I33788)
            ```
             ![Screenshot 2024-10-31 123315](https://github.com/user-attachments/assets/7135778f-00fb-4584-b1e2-c750bb3cb41f)
        3. Purpose: Calculate average Revenue generated per customer.
        4. Result: This can indicate success in upselling and cross-selling strategies or that customers find value in the premium offerings.


### SQL Analysis
---

#### 1. Total Customers by Region
  Description: Determine the distribution of customers across different regions to identify areas with the highest customer base.
  1. Question: How many customers are there in each region?
  2. SQL Query
   ``` Sql Formula
    SELECT Region ,COUNT(CustomerID) AS Total_Customers
FROM [dbo].[LITA Capstone p2]
GROUP by Region;

   ```
  3. Screenshot Of Table

     ![Screenshot 2024-11-04 014953](https://github.com/user-attachments/assets/c791aee4-f276-4b70-9e2f-c2377359cb76)

  4. Insight: This query helps us understand the concentration of customers by region. Regions with a high customer count such as East may indicate market saturation, while those with low counts such as west could suggest areas for potential growth.

  5. Recommendation: Focus marketing efforts on regions with fewer customers to expand market reach, while considering loyalty programs or tailored offers for regions with a high customer base to improve retention.

#### 2. Most Popular Subscription Type
  Description: Identify the subscription type with the highest number of subscribers.

  1. Question: Which subscription type has the most customers?

  2. SQL Query:
     ``` SQL formula
     SELECT SubscriptionType, COUNT(CustomerID) AS CustomerCount
     FROM [dbo].[LITA Capstone p2]
     GROUP BY SubscriptionType
     ORDER BY CustomerCount DESC;
     ```
  3. Screenshot Of table

  ![Screenshot 2024-11-04 020237](https://github.com/user-attachments/assets/e2f0bcc9-be54-49af-ad3f-b5735958b160)

  4. Insight: The query highlights the most and least popular subscription types. High subscription counts for a Basic Subscription Type indicate customer preference, which can guide product focus.

  5. Recommendation: Promote Basic subscription types through targeted advertising and offers. For low-performing subscription types such as Premium and Standard Subscription Type consider revisiting features or adjusting pricing to increase appeal.

#### 3. Canceled Subscriptions within 6 Months
  Description: Identify customers who canceled their subscription within the first six months, which can signal early dissatisfaction.

  1. Question: Which customers canceled their subscriptions within six months of starting?

  2. SQL Query:
     ``` SQL Formula
     SELECT CustomerID, CustomerName,SubscriptionType,
     DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) AS DurationMonths
     FROM [dbo].[LITA Capstone p2]
     WHERE Canceled = 'True' 
     AND DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) <= 6;
      ```
  3. Screenshot of Table
   
     ![Screenshot 2024-11-04 021940](https://github.com/user-attachments/assets/2b02945f-c320-4734-8bd4-66373cb0547a)

  4. Insight: Identifying these customers helps to understand potential issues with the subscription offering that lead to early cancellations.And From the result none of the customers cancelled their subscription less than 6 months.

  5. Recommendation: Conduct surveys or gather feedback from these customers to determine common reasons for early cancellations. Implement changes based on feedback to reduce future early cancellations.

#### 4. Average Subscription Duration
  Description: Calculate the average duration of customer subscriptions to gauge general customer retention.

  1. Question: What is the average subscription duration for all customers?

  2. SQL Query:
     ``` SQL Formula
    SELECT AVG(Suscription_Duration) AS AvgSubscriptionDuration
    FROM[dbo].[LITA Capstone p2] ;
    ```

  3. Screenshot Of Table
     
     ![Screenshot 2024-11-04 031146](https://github.com/user-attachments/assets/2f103947-14a5-481b-874d-9a731a2f62e2)
  4. This metric indicates how long, on average, customers stay subscribed.It can be deduced from this table that the average subscripyoon duration is 365 days (12 months)
  5. Recommendation: Work on increasing average subscription duration by implementing retention strategies in North,south and Western region, such as loyalty discounts or enhanced service offerings.

#### 5. Customers with Subscriptions Longer than 12 Months
  Description: Identify long-term customers with subscriptions extending beyond one year.

  1. Question: Who are the customers with subscriptions longer than 12 months?

  2. SQL Query:
     ``` Sql Formula
     SELECT CustomerID, CustomerName,SubscriptionType,
     DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) AS DurationMonths
     FROM [dbo].[LITA Capstone p2]
     WHERE Canceled = 'False' 
     AND DATEDIFF(MONTH, SubscriptionStart, SubscriptionEnd) > 12;
     ```
  3.ScreenShot Of Table
  
      ![Screenshot 2024-11-04 024454](https://github.com/user-attachments/assets/7beae764-a1bc-4f5f-b8a6-f007673b227e)

  3. Insight:The Table shows that no customer has a subscription older than 12 months. Long-term customers are usually more engaged and can provide valuable insights into what makes the service appealing.

  4. Recommendation: Consider implementing rewards for these customers or involve them in feedback sessions to understand what drives retention.

#### 6. Total Revenue by Subscription Type
  Description: Determine total revenue per subscription type to identify the most profitable types.

  1. Question: How much revenue does each subscription type generate?

  2. SQL Query:
     ``` Sql Formula
     SELECT SubscriptionType, SUM(Revenue) AS TotalRevenue
     FROM [dbo].[LITA Capstone p2]
     GROUP BY 
     SubscriptionType;
     ```
  3. Screenshot Of Table

     ![Screenshot 2024-11-04 025218](https://github.com/user-attachments/assets/fa4cfcdf-ae39-4630-a58d-517cd09d7197)

  4. Insight: This metric shows which Basic subscription types are the most financially valuable.

  5. Recommendation: Allocate more resources to Basic subscription types to maximize profit. Consider revising lower-revenue types to enhance value.

#### 7. Top 3 Regions by Subscription Cancellations
  Description: Identify the top regions with the highest number of subscription cancellations.

  1. Question: Which regions have the highest cancellation rates?

  2. SQL Query:
     ``` SQL Formula
     SELECT TOP 3 Region, COUNT(CustomerID) AS Cancellations
     FROM [dbo].[LITA Capstone p2]
     WHERE 
     Canceled = 'True'
     GROUP BY 
     Region
     ORDER BY 
     Cancellations DESC
     ```
  3. Screenshot Of Table
     
     ![Screenshot 2024-11-04 022844](https://github.com/user-attachments/assets/30dffe5b-ab0f-4b35-ba38-c7ab23872d7a)

  4. Insight: it was determined that the highest cancellation were recorded in the North and South with no Cancellation in the East.
High cancellation rates in specific regions may indicate local market issues or service dissatisfaction.

  5. Recommendation: Investigate the causes of cancellations in these regions and adjust services or marketing strategies to reduce churn.

#### 8. Total Active and Canceled Subscriptions
  Description: Get the overall count of active and canceled subscriptions to assess the general retention.

  1. Question: What is the count of active vs. canceled subscriptions?

  2. SQL Query:
     ``` Sql formula
     SELECT Canceled, COUNT(CustomerID) AS SubscriptionCount
     FROM [dbo].[LITA Capstone p2]
     GROUP BY 
     Canceled;
     ```

  3. Screenshot Of Table

      ![Screenshot 2024-11-04 030551](https://github.com/user-attachments/assets/c8e92c60-3e82-4242-9241-056db2a5f405)

  4. Insight: This breakdown of active versus canceled subscriptions provides insight into overall customer retention.

  5. Recommendation: Continue monitoring this metric to identify changes in customer retention over time. Develop retention strategies for at-risk customers.





### PowerBi Dashboard
---
 - #### Dashboard Overview

   The image below shows the entire view of the dashboard
 
![Screenshot 2024-10-29 121608](https://github.com/user-attachments/assets/5d3352c0-76ce-4925-b376-85e7f1191288)
- #### Dashboard Features
  - Interactive filters
      
    
   ### SQL Analysis
    - #### Data Cleaning and Formatting




