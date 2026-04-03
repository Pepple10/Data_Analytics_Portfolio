**Financial Transaction Analysis**



In this project, i worked with a financial transactions dataset to understand how money flows across different categories, cities and payments methods. My goal was to uncover patterns in spending behavior and present them in a clear, interactive dashboard.



**Problems I Noticed**

When I first explored the dataset, i noticed several issues:



* The Transaction\_Date column had inconsistent formats.
* Some fields like Category and Payment\_Method had missing values.
* The dataset was not ready for analysis.



I realized that without proper cleaning, any insights I generated would be inaccurate.



**Data Cleaning**

I used power BI (Power Query) to clean and prepare the data:



* Fixed inconsistent date formats by creating a new clean date column.
* Removed errors and replaced invalid values with nulls where necessary.
* Handled missing values by replacing them with "Unknown"
* Cleaned text fields by trimming spaces and standardizing capitalization.
* Ensured the amount column was correctly formatted as numeric field.



**Data Transformation**

To improve analysis, I created additional columns:



* Extracted Year from the transaction date
* Extracted Month to analyze trends over time





**Data Modeling**

I kept the model simple with a single table since the dataset did not require relationships.



**Measures Created (DAX)**

I created key measures to drive the dashboards:



* **Total Revenue** -> Total amount of all transactions
* **Total Transactions ->** Count of all transactions
* **Average Transactions ->** Average spending per transaction





**Dashboard Development**



I built an interactive dashboard in power BI with:



* KPI cards for key metrics
* Bar charts for category and city analysis
* Line to track monthly trends
* Pie chart for payment method distribution
* Slicers for filtering by category, city, payment method, and year





**Key Insights**

From my analysis, I observed that:



* Certain categories contribute the most to total spending 
* Some cities consistently have higher transactions values
* Payment methods show clear user preferences
* Spending patterns fluctuate across different months



**Tools Used**

* Power BI (Power Query, DAX, Dashboarding)
* Excel (initial data inspection)



**Recommendations**

Based on the analysis, the following actions are recommended:



* Focus on high performing categories to maximize revenue opportunities
* Investigate top-performing cities to identify drivers of higher-transaction activity
* Optimize payment method offerings based on user preferences
* Leverage seasonal trends to plan targeted campaigns and promotions
* Improve data collection processes to reduce inconsistencies and missing values 













































