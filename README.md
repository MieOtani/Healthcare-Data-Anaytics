# 📊 Healthcare Data Analytics
Explored the correlation between life expectancy, GDP, and COVID-19 mortality across 20 countries using datasets from the UN, Kaggle, and World Bank. Cleaned data in Excel, analyzed it in MySQL, and visualized findings in Tableau through an interactive dashboard.

# 🧠 Overview
This project analyzes healthcare-related data from global sources to investigate:
- How GDP per capita relates to life expectancy
- Whether there’s a connection between economic indicators and COVID-19 mortality
- Patterns and outliers across different world regions

# 🧰 Databases & Tools 
- Sources: Kaggle, World Bank, United Nations
- Excel: Initial data cleaning and formatting
- MySQL: Data storage and advanced querying
- Tableau: Dashboards and data storytelling

# 🛠️ ETL + Visualization Workflow
1. Excel
- "Filter" feature for value exploration
- Formatting tools and TEXT functions (LEFT, RIGHT, MID, TRIM) for cleanup
- Replaced commas for format consistency
- Removed entries for irrelevant countries
- Conditional Formatting to highlight patterns and anomalies
- Data Validation for input consistency
- XLOOKUP to merge datasets
2. MySQL
- CREATE TABLE for Life Expectancy and COVID-19 datasets
- Table Data Import Wizard to populate them
- Simulate FULL OUTER JOIN using LEFT JOIN + UNION + RIGHT JOIN
- ALTER TABLE to add GDP column
- UPDATE, SET and CASE WHEN to populate it
- ALTER TABLE and ADD COLUMN for Mortality Rate
- UPDATE and SET calculation to populate it
- Export final recordset
3. Tableau
- Maps for geographic visual analysis of life expectancy
- Bar graphs and Scatter plots to present the data of average life expectancy
- Calculated Fields to derive insights (life expectancy categories)
- Filters and Parameters for dynamic data exploration
- Interactive Dashboards for an intuitive user experience

# 🧹 Data Cleaning & Processing
1. Review Column Names
- Remove duplicates and irrelevant columns for analysis
- Adhere to naming conventions, eliminating inconsistencies
- Retained only 2023 using helper column logic
2. Check Data Types
- Verify that each column's data type matches expectations
- Check the language and spelling of countries
3. Summarize Data
- Generate descriptive statistics for numeric columns (mean, median, min, max)
4. Handle Missing Values
- Identify columns with missing or null values
- Standardize format for each column
- Clean extra commas (search/replace)
5. Imputation of Data
- Filled missing values for GDP, life expectancy, and COVID-19 data
6. Outlier Detection
- Flag anomalies in the data distribution
7. Key Metrics Analysis
- Life expectancy, mortality rate, GDP, total deaths, population

# 📈 Statistical Analysis
1. Descriptive Statistics
- Summarize the dataset by calculating measures (mean, median, standard deviation, percentiles)
- Provide insights into the central tendency and variability of COVID cases, life expectancy, and mortality rates
- Compare key metrics across different countries, regions, or income levels
- Highlight variation in average life expectancy between high-income and low-income countries or COVID mortality rates across different regions
2. Correlation Analysis
- Examine the relationship between variables (GDP vs. life expectancy, COVID-19 mortality vs. life expectancy)
- Identify whether higher GDP correlated with higher life expectancy or lower COVID mortality rates

# 📌 Key Findings
- Life Expectancy (2019) vs. COVID-19 Deaths: 0.140 (weak positive correlation)
- GDP vs. COVID-19 Mortality Rate: 0.146 (weak positive correlation)
- These results suggest minimal influence from GDP or life expectancy on COVID-19 mortality rates

# 💡 Insights
1. Life Expectancy vs. GDP (Bubble Chart on Tableau Dashboard)
- High-GDP countries (Japan, Switzerland, Canada) show longer life expectancy
- Low-GDP countries (Chad, Nigeria, Central African Republic) also show lower life expectancy
- Conclusion: supports link between economic strength and healthcare quality
2. Life Expectancy vs. COVID-19 Mortality (Bubble Chart on Tableau Dashboard)
- No clear pattern
- Some high-life-expectancy countries (Andorra, Canada, Japan) had low mortality, while others (Chile, Brazil, Georgia) had high
- Conclusion: higher life expectancy has a weak correlation to higher COVID-19 mortality rates
3. Mortality Rate per Country (Bar Chart on Tableau Dashboard)
- Highest: Georgia, Chile, Brazil
- Lowest: Lesotho, Somalia, Central African Republic
- Conclusion: suggests pandemic outcomes depend more on healthcare infrastructure and response
4. Additional Notes
- Higher GDP ≠ better COVID outcomes
- Some low-income countries had high life expectancy
- Regions with strong healthcare investment correlated with better resilience during the pandemic

# 📂 Files Included
- /original-datasets         → Raw unprocessed data  
- /filtered-datasets         → Cleaned datasets  
- /MySQL-queries             → MySQL scripts used in analysis  
- /Tableau-visualizations    → Interactive Tableau dashboards  

# 🔍 Tableau Dashboard
- Download and open in Tableau Public/Desktop: [Healthcare Data Analytics - Tableau Dashboard](https://github.com/MieOtani/Healthcare-Data-Anaytics/blob/1c32a104ef0ed92ae38a77bb0867530466d476f2/Tableau%20Dashboard%20-%20Healthcare%20Data%20Analytics.twbx)
