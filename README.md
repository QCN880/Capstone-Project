# Capstone-Project
A documentation of my personal project at LITA 

## Tables of Content
---
  - [Project Overview](#project-overview)
  - [Project Objective](#project-objective)
  - [Data Sources](#data-sources)
  - [Data Overview](#data-overview)
  - [Tools used](#tools-used)
  - [Formulas Used](#formulas-used)
  - [Data Cleaning and Formatting](#data-cleaning-and-formatting)


### Project Topic : Customers Segmentation Analysis

### Project Overview 
---
This project involves analyzing customer data for a subscription-based service to understand customer behavior, identify customer segments, and track trends in subscriptions, cancellations, and renewals. The goal is to provide actionable insights on customer retention, the popularity of subscription types, and customer demographics through an interactive Power BI dashboard.

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
 - Subscription Start Date:shows the date when the subscription started.
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
  
 - Documentation: README.md, Project Report (PDF)
 - GitHub for portfolio building

### Formulas Used 
The formulas used for the analysis and preparation of the projects are :
 - Excel Formulas :
   ``` Excel formula
   Average Subscription Duration = AVERAGE (suscription duration)
   
   Average Revenue Per Customer = SUM (Revenue) /COUNTA ( Customer Id)
   
   Customer Cancellation Rate =(COUNTIF('CustomerData (2)'!G2:G33788,"TRUE")/'CustomerData (2)'!E2:E33788)
   ```
 - SQL Formulas used :
    ``` SQL Formulas```

   ### Data Cleaning and Formatting
   ---
    



