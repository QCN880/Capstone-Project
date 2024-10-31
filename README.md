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
### PowerBi Dashboard
---
 - #### Dashboard Overview

   The image below shows the entire view of the dashboard
 
![Screenshot 2024-10-29 121608](https://github.com/user-attachments/assets/5d3352c0-76ce-4925-b376-85e7f1191288)
- #### Dashboard Features
  - Interactive filters
      
    
   ### SQL Analysis
    - #### Data Cleaning and Formatting




