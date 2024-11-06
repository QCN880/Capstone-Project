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
#### In SQL
  - Load Data into SQL Server: Import the cleaned Excel file into SQL Server as a flat file 
  - Data Validation and Integrity Checks: Verify data types for each column, particularly ensuring that Subscription Start Date and Subscription End Date are recognized as date types.
  - #### SQL Queries
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
![Screenshot 2024-11-06 090532](https://github.com/user-attachments/assets/31355220-d9b9-489e-97a5-0163887d485d)
- #### Dashboard Features
 - ##### Interactive Filter
    1. Position: Located just below the navigation panel on the left side.

    2. Filters:

        1. Year Filter: Offers the user the ability to filter data by specific years, shown here as "2022" and "2023."
            1.Functionality: Selecting a year instantly updates the entire dashboard to display metrics relevant to the chosen year. This provides a dynamic view of metrics across time periods, allowing for comparative analysis and identifying trends.
            2. Description: These filters make the dashboard interactive, enabling users to isolate specific timeframes and analyze how customer behavior and revenue metrics evolve annually. This is especially useful for trend analysis and performance tracking.

       2. Filter Interaction with Visuals
            1. Impact on Dashboard Elements:
When a year is selected, the filter influences all charts and key metrics, including Total Revenue, Total Numbers of Customers, Subscription Counts by Region and Type, and Monthly Subscription Trend. It allows users to analyze metrics specific to the year they are interested in without needing to navigate away from the main view.
            2. Description: This filtering feature ensures a cohesive and interactive experience, where insights for different years are quickly accessible. It empowers users to drill down into data specific to their timeframe of interest.
               
       3. Dashboard Interactivity and  Highlights
            1. Clickable Visuals:Some charts and metrics are set up to allow users to click on specific data points (e.g., Count of Customers by Region) to dynamically filter other visuals within the dashboard, providing a more granular view of each region’s subscription and revenue data.

            2. Highlighting: Selecting certain data points (such as a specific subscription type in the "Count of Customers by Subscription" chart) may apply a cross-filter, automatically updating related visuals to focus on the chosen category.

             3. Description: This interactivity enables an in-depth analysis by allowing users to explore specific data segments directly within the visuals. It is designed to enhance data exploration and make the dashboard user-driven.

 ###### Summary
The navigation panel and interactive filters in this dashboard provide an intuitive and user-friendly interface, enabling users to:

   1. Seamlessly navigate between different dashboard sections using icons in the left panel.
   2. Filter data by year to track performance over time.
Drill down into specific metrics for a focused analysis, using clickable visuals that apply dynamic filtering.
   3. This design encourages an interactive data exploration experience, allowing users to gain targeted insights effortlessly and enhancing the dashboard’s functionality for a range of analytical needs.
      
 - ##### Navigation Panel

      1. Position: Located on the left side of the dashboard, it provides quick access to different sections.

      2. Icons:

          1. Home Icon: Takes the user back to the main view of the dashboard, serving as a default navigation point.
          2. Data Icon: Represents customer data insights, potentially redirecting to a more detailed breakdown of subscription and revenue metrics.
          3. Q&A Icon: The Q and A icon is designed to make the dashboard more user-friendly, especially for new users or those unfamiliar with certain metrics or analysis methods.
               1. Usage: Users can click on the Q and A icon to open a panel or popup with helpful information, making it easy to clarify questions without leaving the dashboard.

          4. URL Icon: When clicked, the URL icon redirects users to external resources, such as:
              1. Detailed documentation or guides relevant to the dashboard’s data.
              2. Related reports, articles, or industry benchmarks for comparison.
              3. The GitHub repository where this dashboard's source files, explanations, or updates are stored.

 - ##### Key Performance Instruction (KPIs)
##### 1. Total Revenue
 1. Description: This metric displays the total revenue generated from all active and past customers combined, representing the overall financial performance of the company.
 2. Value: 40.5M
 3. Insights: A total revenue of 40.5M indicates robust sales, reflecting the effectiveness of current sales and marketing strategies. Since the company serves a relatively small customer base, this value shows that each customer contributes significantly to revenue.
 4. Recommendations:
      1. Revenue Growth: Increase revenue per customer by offering premium add-ons or exclusive features, particularly targeted at high-value customers who already have a strong spending record. Consider expanding the customer base by targeting similar high-value market segments, ensuring each new customer is as valuable as the current ones.
      2. Customer Segmentation: Segment customers based on spending patterns to develop customized loyalty programs for high-revenue groups and drive engagement in lower-revenue segments.Track and compare revenue growth over different time periods to assess the impact of any marketing campaigns or strategic initiatives.

##### 2. Total Number of Customers
  1. Description: The count of all customers currently under active subscriptions.
  2. Value: 12
  3. Insights: With only 12 active customers, each one holds considerable importance to overall revenue, suggesting the business might operate in a high-value niche or focus on premium clientele.
  4. Recommendations:
        1. Customer Retention: Develop personalized customer retention plans, including regular check-ins, feedback collection, and tailored offers, to ensure each customer remains engaged.
        2. Customer Acquisition: Implement targeted marketing campaigns to attract more customers in similar premium market segments. Focus on referrals, as existing customers may know others who fit this profile. Consider incentives for current customers who refer new clients, increasing brand reach while retaining quality in the customer base.
         
##### 3. Average Subscription Duration
  1. Description: Displays the average length of time that customers stay subscribed, indicating loyalty and satisfaction levels.
  2. Value: 365 days (1 year)
  3. Insights: An average subscription duration of one year is an indicator of customer satisfaction, showing that customers generally find value over a long term. This duration is especially notable given the premium market likely being served.
  4. Recommendations:
      1. Incentivize Long-Term Subscriptions: Offer discounts or added benefits for annual renewals to encourage even longer commitments. Provide a loyalty reward at the end of the year to thank customers for their ongoing support and motivate them to renew.
      2. Monitor Renewal Trends: Track renewal rates and notice if they change year-over-year. This data will allow you to predict and address potential churn points or shifts in customer satisfaction.

  ##### 4. Average Cancellation Rate
  1. Description: Shows the percentage of subscriptions that have been canceled, representing customer turnover.
  2. Value: 0%
  3. Insights: A 0% cancellation rate is a strong sign of customer loyalty and satisfaction with current offerings. However, it's essential to monitor this over time to identify any early signs of potential issues.
  4. Recommendations:
      1. Continuous Improvement: Though the current rate is ideal, regularly collect feedback to ensure satisfaction and address any potential problems proactively.
      2. Churn Prediction: Consider setting up alerts for key behaviors often associated with cancellation, such as decreases in engagement or prolonged inactivity, so proactive steps can be taken to retain customers.
##### 5. Count of Customers by Subscription Type
  1. Description: A pie chart that breaks down customers by their subscription plan: Basic, Premium, and Standard.
  2. Distribution:
        1. Basic: 50.18%
        2. Premium: 24.98%
        3. Standard: 24.98%
  3. Insights: With half of the customer base on the Basic plan, customers are showing preference for the entry-level option. This may be due to budget constraints or satisfaction with the value provided by Basic features.
  4. Recommendations:
      1. Upgrade Opportunities: Introduce a loyalty program for Basic subscribers that offers access to Premium or Standard features on a trial basis. This can help them experience the added value of higher tiers and encourage upgrades.
      2. Highlight the benefits of Premium and Standard plans in communications, showcasing exclusive features and potential ROI to make these plans more attractive.
      3. Value Reevaluation: Analyze feedback from Basic plan users to understand what they value most and identify potential improvements or added benefits that would make upgrading appealing without oversimplifying the offering.
##### 6. Count of Customers by Region
  1. Description: Pie chart illustrating the geographical distribution of customers across the East, South, North, and West regions.
  2. Distribution:
      1. East: 25.26%
      2. South: 24.81%
      3. North: 24.81%
      4. West: 24.48%
  3. Insights: The nearly equal distribution suggests broad appeal across all regions, indicating a well-rounded product offering or effective nationwide marketing.
  4. Recommendations:
      1. Tailored Regional Campaigns: Customize campaigns or offers for each region to test which promotions resonate best. For example, offer region-specific discounts or seasonal promotions to encourage loyalty.
      2. Localization of Services: Gather data to see if regional preferences exist (e.g., different features preferred in the North vs. the South) and consider adding or modifying services to cater to these preferences, potentially boosting regional satisfaction and loyalty.
     
##### 7. Total Active to Canceled Subscriptions
  1. Description: Pie chart depicting the ratio of active to canceled subscriptions over the total period.
  2. Distribution:
      1. Active: 55.01%
      2. Canceled: 44.99%
  3. Insights: The fact that nearly half of the subscriptions were canceled at some point indicates prior retention issues or that certain customers weren’t fully satisfied with the service.
  4. Recommendations:
      1. Retention Efforts for New Signups: Implement a nurturing program for new customers, particularly in the first few months of their subscription. Frequent touchpoints, guidance, and reminders of benefits can help strengthen early engagement.
      2. Exit Interviews for Cancellations: When customers do cancel, ask them to complete an exit survey to understand their reasons for leaving. Use this feedback to make adjustments that could lower the future cancellation rate.
     
##### 8. Subscription Cancellations by Subscription Type
  1. Description: Stacked bar chart showing the number of cancellations by subscription type (Basic, Premium, Standard).
  2. Values:
      1. Basic: 5.0K
      3. Premium: 1.6K
      5. Standard: 1.6K
  3. Insights: The higher cancellation rate for Basic subscriptions suggests customers might not find the plan valuable enough over time, potentially leading to dissatisfaction or a decision to switch to a competitor.
  4. Recommendations:
        1. Enhance Basic Plan Offerings: Consider adding minor features or benefits to the Basic plan to increase its perceived value and reduce churn.
        2. Transition Offers: Offer discounted upgrades to the Standard or Premium plans for Basic subscribers approaching their renewal date, encouraging them to stay with an upgraded experience.
     
##### 9. Subscription Cancellations by Region
  1.Description: Pie chart showing cancellations segmented by region.
  2. Distribution:
      1. West: 60.21%
      3. East: 19.76%
      4. South: 20.03%
  3. Insights: The West region has a significantly higher cancellation rate compared to other regions, suggesting regional dissatisfaction or perhaps issues specific to that market.
  4. Recommendations:
      1. Region-Specific Feedback: Gather targeted feedback from customers in the West region to identify factors contributing to higher churn, such as customer service quality, feature relevance, or payment convenience.
      2. Targeted Retention Strategies: Implement retention initiatives, such as improved support or a dedicated relationship manager for high-churn regions, especially for valuable customers at risk of cancellation.
      
##### 10. Monthly Subscription Trend
  1. Description: Line chart showing the monthly trend of subscriptions throughout the year, providing insights into seasonal or campaign-driven trends.
  2. Insights: Peaks and dips in the subscription trend may reflect seasonal customer behaviors or the impact of past marketing campaigns. Understanding these trends can help with planning.
  3. Recommendations:
      1. Leverage Seasonal Patterns:Plan campaigns around peak months identified in the trend data, and offer promotions or incentives in slower months to even out the subscription volume.
      2. Campaign Tracking: Track the impact of each campaign on subscription numbers to determine the most effective promotional periods and strategies.
         
##### 11. Top Customers by Revenue
  1. Description: Bar chart highlighting the top 5 customers based on total revenue generated.
  2. Top 5 Customers:
        1. Liam: 3.44M
        3. Mike: 3.42M
        4. Anna: 3.41M
        5. Jane: 3.39M
        6. Eva: 3.38M
  3. Insights: These customers are high-value and should be prioritized for retention efforts. Their contributions significantly impact total revenue.
  4. Recommendations:
     1.  VIP Treatment: Create a “VIP” program for top spenders, providing perks like priority customer support, exclusive previews, or personal account management.

     3. Cross-Sell Opportunities: Offer complementary services or products to top customers based on their spending history and preferences, encouraging higher engagement and potentially increasing their lifetime value.
 
