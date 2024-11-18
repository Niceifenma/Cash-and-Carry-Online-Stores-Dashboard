# CashandCarry Online Stores Sales Analysis

## Table of Contents
1. [Project Overview](#project-overview)
2. [Data Sources](#data-sources)
3. [Tools](#tools)
4. [Exploratory Data Analysis](#exploratory-data-analysis)
5. [Data Analysis](#data-analysis)
6. [Visualization](#visualization)
7. [Executive Summary](#executive-summary)
8. [Insights Deep Dive/Results](#insights-deep-dive)
9. [Recommendations](#recommendations)
10. [Assumptions and Caveats](#assumptions-and-caveats)
11. [Conclusion](#conclusion)

---

# Project Overview
CashandCarry was launched in 2010 as a global online retailer offering a wide range of products via its website and mobile app. This data analysis project examines sales performance from 2011 to 2014 to identify business trends, gain insights, and make data-driven recommendations to optimize business performance.

The SQL scripts utilized to extract valuable insights and enhance our understanding of the dataset are available for download here: [SQL queries](https://niceifenma.github.io/Cash-and-Carry-Online-Stores-Dashboard/), or here:[SQL queries](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/blob/main/OVERVIEW%20OF%20THE%20DATA%20OR%20UNDERSTANDING%20THE%20DATA.sql).

---

# Data Sources
The dataset used for this analysis, titled **Cashandcarrysales.csv**, was provided by Attueyi Coding Academy as a portfolio project. The data is fictional and includes detailed information on sales, customers, products, shipping, and discounts.

---

# Tools
- **Microsoft Excel**: Used for data cleaning and processing. [Download Excel file](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/releases/tag/v1.0)
- **SQL**: Used to query the dataset and extract key insights. 
- **Power BI**: For data visualization and interactive dashboard creation.

---

# Exploratory Data Analysis
Insights and recommendations are provided by exploring the sales data to answer key questions, such as:
### Category I: Sales Analysis
#### 1. Total Sales
- What are the overall sales from 2011 to 2014?
- What are the yearly sales?
- What are the peak sales period trends?

#### 2. Sales Analysis by Product
- What are the Best and worst-selling products between 2011 and 2014?
- List the Top 5 best and worst sellers for each year from 2011 to 2014.
- Which product categories had the highest and lowest sales?
- Which product category is the Best-selling category between 2011 and 2014?

#### 3. Sales Analysis by Country
- Which countries contributed the highest and lowest sales from 2011 to 2014?
- Which country has the Highest and lowest annual sales by country?

#### 4. Sales Analysis by Customers
- Who are the top and lowest sales-contributing customers from 2011 to 2014?
- Who are the yearly top sales-generating customers?
- Who are the key customers from the country with the highest sales contribution (United States)?

#### 5. Sales Analysis by Customer Segment
- Which customer segment is driving the most revenue?
- Which product category with the highest purchases from the consumer segment?

#### 6. Sales Analysis by Order Priority
- Which order priority levels contributed the most and least to total sales between 2011 and 2014?

### Category II: Profit Analysis
#### 1. Total Profit
- What profit was earned from 2011 to 2014?
- Evaluate the annual profit trends.
- What are the peak profit and loss period trends?

#### 2. Profit Analysis by Product
- What are the top and least profit-generating products for each year from 2011 to 2014?
- Which product category generated the highest profit between 2011 and 2014?

#### 3. Profit Analysis by Country
- What are the countries generating the highest and lowest profit from 2011 to 2014?
- Evaluate the annual profit by country.

#### 4. Profit Analysis by Customers
- Who are the top 5 and lowest profit-generating customers from 2011 to 2014?
- List the yearly top profit-generating customers.
- Who are the key customers from the top profit-contributing countries?

#### 5. Profit Analysis by Customer Segment
- Which customer segment is driving the most profit?
- Which product category generates the highest profit from the consumer segment?

#### 6. Profit Analysis by Order Priority
- Which order priority level contributed the most and least to total profit from 2011 to 2014?

### Category III: Discount Analysis
- What is the total amount discounted from 2011 to 2014?
- What are the annual discount trends by product category?
- Is the discount rate consistent across the product category?
- How effective is a discount on sales and profit across product categories?

### Category IV: Shipping Mode and Cost Analysis
- What is the most preferred shipping mode in terms of order volume?
- Which shipping mode generates the highest sales and profit across product categories?

---

# Data Analysis
SQL queries were employed to derive insights from various business questions surrounding sales, profit, discount, and shipping. 
The SQL full scripts used in the analysis for all the business questions can be downloaded here: [SQL queries](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/blob/main/Cashandcarry%20Online%20sales%20Analysis.sql).

The SQL scripts used in the analysis for each section of the business questions can be downloaded here: 

Sales : [SQL queries](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/blob/main/Cashandcarry%20Online%20sales%20business%20Analysis.sql).

Profit : [SQL queries](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/blob/main/Cashandcarry%20Online%20Profit%20Analysis.sql).

Discount : [SQL queries](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/blob/main/Cashandcarry%20Online%20Discount%20Analysis.sql).

Shipping : [SQL queries](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/blob/main/Cashandcarry%20Online%20Shipping%20Analysis.sql).

---

# Visualization
Data visualizations were created using Power BI, with key insights represented via interactive dashboards. 
Explore the Report dashboard here: [Power BI Dashboard](https://app.powerbi.com/groups/me/reports/de49815e-e815-4314-9c60-c7769ae958e2/173da6f4c01869e6e648?experience=power-bi).

Download Power BI Sales Analysis Report in PDF File and  PowerPoint file here: [Power BI Dashboard](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/releases/tag/v1.0).



---  

# Executive Summary
From 2011 to 2014, CashandCarry experienced consistent growth in sales and profits, with peak performances during the holiday seasons. Key performance indicators have shown year-over-year increases in sales (51.4%) and profit (58.84%). However, February showed a decline in sales and profit due to post-holiday slowdowns and a decrease in product discounts. This report addresses additional drivers and areas for improvement.
Discover key insights through the Executive Summary dashboard here: [Power BI Dashboard](https://app.powerbi.com/groups/me/reports/de49815e-e815-4314-9c60-c7769ae958e2/173da6f4c01869e6e648?experience=power-bi).

The snapshot of the Power BI dashboard overview is presented below,

![EX Summary Overview](https://github.com/Niceifenma/Cash-and-Carry-Online-Stores-Dashboard/blob/fc5afe6cdc132e08d20d0e79b9bfdb92db143e23/EX_Summary_Overview_png.png)


---

# Insights Deep Dive

### Category I: Sales Analysis
#### 1. Total Sales
- Total sales from 2011 to 2014: $12,642,905.00.
- Yearly sales: $2,259,511 (2011), $2,677,493 (2012), $3,405,860 (2013), $4,300,041 (2014).
- The store experienced steady sales growth across the year.  Sales peaked during December each year, with a November peak in 2014. February saw significant declines across the board. This increase during the holiday season is likely driven by gift purchases and promotional discounts. Decline in February sales across the years could be, likely due to post-holiday slowdowns and fewer discounts.
- Increase in revenue is notably consistent in the fourth quarter. 
- Year-over-year orders and sales have consistently increased over the years, which can be attributed to the marketing team's sustained efforts in promoting products.

![EX Summary Sales Analysis]..(https://github.com/user-attachments/assets/2d00b96a-a657-431e-9a56-bdd7203f78da)


!..(https://github.com/user-attachments/assets/2d00b96a-a657-431e-9a56-bdd7203f78da)


#### 2. Sales by Product
- Best-selling product (2011-2014): Canon Image CLASS 2200 Advanced Copier.
- Worst-selling product: Eureka Disposable Bags for Sanitaire Vibra Groomer I Upright Vac.
- Technology consistently topped sales across years, while Office Supplies lagged.

#### 3. Sales by Country
- Top 5 sales-contributing countries: United States, Australia, France, China, Germany.
- Lowest 5 sale-contributing countries: Equatorial Guinea, Armenia, Eritrea, Macedonia, Tajikistan.
- The United States consistently contributed the highest sales each year, while the lowest sales came from Tajikistan in 2011, Macedonia in 2012, Armenia in 2013, and Taiwan in 2014.

#### 4. Sales by Customers
- Top 5 customers: Sean Miller, Tamara Chand, Cari Sayre, Susan Pistek, Vivek Grady.
- Lowest 5 sales contributors: Adrian Hane, Bruce Stewart, Chloris Kastensmidt, Lisa Hazard, Liz Preis.
- The top sales-generating customers by year are Sean Miller in 2011, Susan Pistek in 2012, Tamara Chand in 2013, and Raymond Buch in 2014.
- From 2011 to 2014, the United States led in sales contributions, with key customers being Sean Miller in 2011, Peter Fuller in 2012, Tamara Chand in 2013, and Raymond Buch in 2014.

#### 5. Sales by Customer Segment
- The Consumer segment drove the highest revenue.
- Technology was the top-selling category for the Consumer segment.

#### 6. Sales Analysis by Order Priority
- Medium-priority orders contributed the most to total sales consistently for all four years., while Low-priority orders contributed the least.


---

### Category II: Profit Analysis
#### 1. Total Profit
- Total profit earned (2011-2014): $2,388,103.51.
- Yearly profit: $383,683.80 (2011), $527,307.47 (2012), $658,726.13 (2013), $818,386.11 (2014).
- From 2011 to 2014, Profits peaked in December, November, September, and November respectively.
 - Losses recorded during 2011-2014, were in April, February, February, and January respectively, mostly during post-holiday months, likely due to poor sales.  
 - The Profit saw a year-over-year increase in all the years with a slight decrease in 2013. 
 
![EX  Summary Profit Analysis](https://github.com/user-attachments/assets/a05acdd8-e842-49a6-a228-7b0cc8f1db0b)

#### 2. Profit by Product 
- Top 5 profit-generating products: Hon Deluxe Fabric Upholstered Stacking Chairs, Wilson Jones A4 Ring Binders.
- Lowest 5 profit-generating countries: South Sudan, Tajikistan, Bahrain, Burundi, Chad.
- The product category that generated the most profit was the office supplies

#### 3. Profit by Country
- Top 5 profit-generating products: Hon Deluxe Fabric Upholstered Stacking Chairs, Wilson Jones A4 Ring Binders.
- Lowest 5 profit-generating countries: South Sudan, Tajikistan, Bahrain, Burundi, Chad.
- The United States consistently led in profit contribution across all four years. However, the countries with the lowest contributions shifted yearly: Tajikistan in 2011, Macedonia in 2012, Armenia in 2013, and Taiwan in 2014.

#### 4. Profit by Customers
- Overall Top 5 profit-generating customers(2011-2014): Kean Nguyen, Keith Herrera, Joel Jenkins, Harry Marie, Harold Engle.
- Analyzing the annual trend, Karen Ferguson was the top profit-generating customer in 2011, followed by Keith Herrera in 2012, Kalyca Meade in 2013, and Theresa Coyne in 2014.
c)	The key customers from the top profit-contributing country, the United States, varied each year from 2011 to 2014. 2011 Karen Ferguson was the leading customer, followed by Keith Herrera in 2012. In 2013, Pete Kriz emerged as a key customer, and in 2014, Jill Fjeld took the lead.

#### 5. Profit by Customer Segment
- The Consumer segment consistently drove the highest profits, with Office Supplies leading in profit contribution each year.

#### 6. Profit Analysis by Order Priority
- Medium-priority consistently contributed the most to profit across all four years. Conversely, the Low priority level contributed the least to profit in each year.
 
  

---

### Category III: Discount Analysis
1)	Total discount: $7,328.47 (2011-2014).
2)	Between 2011 and 2014, the total amount discounted for each product category is as follows:
Office Supplies: $4,297.19
Furniture: $1,660.03
Technology: $1,371.25

![EX  Summary Discount Analysis](https://github.com/user-attachments/assets/79f51612-8ae0-4a78-8298-07b166b8c461)

3)	The rates of discount and its consistency across product categories from 2011 to 2014 reveal valuable insights into our pricing strategies. 
- The average discounts are $0.14 for Office Supplies, $0.17 for Furniture, and $0.14 for Technology, indicating an emphasis on incentivizing purchases in these categories to enhance sales and manage inventory effectively.
- The slight variability in the standard deviation of discount rates is minimal, with Office Supplies at $0.22 compared to $0.20 for Technology and Furniture, indicating marginal variability in Office Supplies. Overall, discount patterns are consistent, reflecting Cashandcarry Store's effective and well-managed pricing strategies aligned with sales objectives.
4)	The analysis of discount effectiveness on sales and profit from 2011 to 2014 shows:
•	Furniture: Discounted sales totaled $2,185,715 with a profit of $254,853.94, compared to $1,925,169 and $197,016.94 for non-discounted sales, indicating that discounts positively impacted both sales and profit.
•	Office Supplies: Discounted sales were $1,409,303 with a profit of $589,458.86, while non-discounted sales reached $2,378,027, yielding profits of $885,162.52. While discounts aim to increase sales, non-discounted products in this category achieved higher sales and profits
•	Technology: Discounted sales totaled $1,793,758 with a profit of $196,522.48, versus $2,950,933 and $265,088.77 for non-discounted items, suggesting that discounts did not enhance sales or profitability.
Discounts effectively drive sales, especially in Furniture. However, in Office Supplies and Technology, non-discounted products yield higher profits, indicating that while discounts attract buyers, they may reduce profit margins in certain categories.

### Category IV: Shipping Mode and Cost Analysis
- Standard Class was the most preferred shipping mode in terms of order volume, revenue generation, and profitability for each year across each category.
![EX  Summary Shipping Analysis](https://github.com/user-attachments/assets/ff831f87-087b-464e-8c46-0f2ce78c29fa)
---  

# Recommendations
In light of the insights and findings presented, we recommend that the stakeholder team consider the following, with specific actions directed at relevant teams:
- **Marketing Team**: Increase promotional efforts during November and December, especially for Technology and office supplies products.
- **Product Management Team**: Focus on promoting and stocking best-selling products like the Canon Image CLASS 2200 Advanced Copier. Also, maintain stock and marketing efforts for profitable items from the office suppies category.
- **Product Development and Finance Teams**: Revamp product category that is  underperforming  in sales (e.g., Office Supplies, Eureka Disposable Bags). Adjust pricing strategies to maximize profits while staying competitive, considering options like bundling, promotions, or product discontinuation.
- **Marketing and Digital Advertising Teams**: Boost sponsored online ads in countries where our customers reside, especially in countries with lower revenue and profit, like Tajikistan, Macedonia, Armenia, and Taiwanto, to improve visibility and drive sales.
- **Finance and Operations Teams**: Address recurring loss periods (e.g., February) by analyzing consumer behavior and adjusting inventory, pricing, or promotions to mitigate post-holiday slowdowns.
- **Sales and Marketing Team**: To drive sales further, target the Consumer segment, the highest revenue-generating group, with personalized promotions and marketing strategies.
- **Customer Retention Team**: Develop loyalty programs or personalized campaigns for top customers like Sean Miller and Tamara Chand to boost retention and repeat purchases.
- **Pricing and Revenue Management Teams**: Reevaluate the discounting strategy for Office Supplies and Technology, ensuring that discounts don't erode profit margins, as non-discounted items generated higher revenue and profit in these categories.
- **Customer Feedback and Product Team**: Collect feedback from customers with High-priority orders to understand why they generate lower sales and profit, and assess if product or fulfillment changes are needed.
- **Operations and Logistics Teams**: Reevaluate the classification criteria for order priority levels, as Medium-priority orders performed better in both revenue and profit than High-priority ones. This includes ensuring that staff are well-trained to manage these orders efficiently and allocate appropriate resources.
- **Sales and Operations Teams**: Tailor marketing to encourage more Medium-priority orders by highlighting benefits such as faster processing times and special offers.
- **Logistics and Customer Service Teams**: While Standard Class is the preferred shipping option, analyze feedback on other shipping options to determine if offering more varied choices could capture additional sales or improve customer satisfaction.
- **Human Resources Team**: Recognize and reward the Pricing/Revenue Management and Sales & Marketing teams for their excellent performance from 2011 to 2014, reflected in consistent growth in sales, profit, and well-managed discount rates across product categories.

![HR giving teams Award](https://github.com/user-attachments/assets/b3b37af2-69fd-4239-94fb-dca4b7051bb4)


---

# Assumptions and Caveats:
During the analysis, several assumptions were made to address data challenges. These include:

• The 2.4% of state and 1.6% of city data containing unresolved special characters that were excluded from the analysis.

•	Missing entries in the country column were reassigned based on the known states corresponding to those countries.

•	A few missing values in the weeknum column were inferred based on historical trends derived from the order date and shipping date columns.

• The Profit column was split into two separate columns: New_Profit for positive values and New_Loss for negative values. This separation simplifies identifying products sold at a profit versus those sold at a loss.


---


# Conclusion
This analysis highlights key trends in sales and profit growth, with actionable insights into customer segments, product categories, and geographical performance. Addressing seasonal sales fluctuations and optimizing discount strategies could further enhance CashandCarry's business performance.

---


**End of this Data Analysis Project** : 🧮 💻 🔍 📊 📈







