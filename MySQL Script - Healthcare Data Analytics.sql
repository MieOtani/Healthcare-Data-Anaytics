/*
-- Project: How COVID-19 Impacted the Life Expectancy of 20 Countries
-- Authors: Jaime Álvarez, Leticia Mie Otani and Lloyd Dela Cruz
-- Date: Feburary 5, 2025
-- Description: This script creates and manipulates a database to analyse the impact of COVID-19 on life expectancy worldwide.
*/

-- Step 1: Clean the 3 datasets on Excel (done outside MySQL)
-- Step 2: Create the Life Expectancy Table
-- This table stores 20 countries' life expectancy data from 2018 to 2023
CREATE TABLE final_project_life_expectancy (
    Country VARCHAR(100) PRIMARY KEY,
    Year_2023 DECIMAL(4,1),
    Year_2022 DECIMAL(4,1),
    Year_2021 DECIMAL(4,1),
    Year_2020 DECIMAL(4,1),
    Year_2019 DECIMAL(4,1),
    Year_2018 DECIMAL(4,1)
    );

-- Step 3: Use Table Data Import Wizard to populate the Life Expectancy Table
-- Step 4: Create the Create the COVID-19 Table
-- This table stores 20 countries' COVID-19 statistics as of 2023, including total cases, total deaths, total tests, and population
    
CREATE TABLE final_project_covid (
    Country VARCHAR(100) PRIMARY KEY,
    Total_Cases BIGINT,
    Total_Deaths BIGINT,
    Total_Tests BIGINT,
    Population BIGINT
    );

-- Step 5: Use Table Data Import Wizard to populate the COVID-19 Data Table
-- Step 6: Combine the Two Tables into a Final Table
-- The final_project table combines life expectancy and COVID-19 data using a FULL OUTER JOIN (simulated using LEFT JOIN + UNION + RIGHT JOIN)

CREATE TABLE final_project AS
SELECT final_project_life_expectancy.Country, 
       Year_2023, Year_2022, Year_2021, Year_2020, Year_2019, Year_2018,
       Total_Cases, Total_Deaths, Total_Tests, Population
FROM final_project_life_expectancy
LEFT JOIN final_project_covid ON final_project_life_expectancy.Country = final_project_covid.Country
UNION
SELECT final_project_covid.Country, 
       Year_2023, Year_2022, Year_2021, Year_2020, Year_2019, Year_2018,
       Total_Cases, Total_Deaths, Total_Tests, Population
FROM final_project_life_expectancy
RIGHT JOIN final_project_covid ON final_project_life_expectancy.Country = final_project_covid.Country;

-- Step 7: Add GDP Column
-- A new column 'GDP' is added to store the Gross Domestic Product for each country from the third dataset

ALTER TABLE final_project
ADD COLUMN GDP BIGINT AFTER Year_2018;

-- Step 8: Populate the GDP data
-- The GDP column is updated for each country using the third dataset

UPDATE final_project 
SET GDP = CASE Country
    WHEN 'Andorra' THEN 3785067332
    WHEN 'Azerbaijan' THEN 72356176471
    WHEN 'Belarus' THEN 71857382746
    WHEN 'Brazil' THEN 2173665655937
    WHEN 'Canada' THEN 2142470914401
    WHEN 'Central African Republic' THEN 2555492085
    WHEN 'Chad' THEN 13149325362
    WHEN 'Chile' THEN 335533331669
    WHEN 'Dominican Republic' THEN 121444279314
    WHEN 'Georgia' THEN 30777833585
    WHEN 'Japan' THEN 4204494802432
    WHEN 'Kazakhstan' THEN 262641892079
    WHEN 'Republic of Korea' THEN 1712792854202
    WHEN 'Lesotho' THEN 2117962451
    WHEN 'Monaco' THEN 9995350547
    WHEN 'Nigeria' THEN 363846332835
    WHEN 'Paraguay' THEN 363846332835
    WHEN 'Philippines' THEN 437146372730
    WHEN 'Somalia' THEN 10968517090
    WHEN 'Switzerland' THEN 884940402230
    ELSE GDP
END
WHERE GDP IS NULL OR GDP = 0;

-- Step 9: Add Mortality Rate Column
-- A new column 'Mortality_Rate' is added to store the COVID-19 mortality rate for each country

ALTER TABLE final_project
ADD COLUMN Mortality_Rate DECIMAL(6,4) AFTER Population;

-- Step 10: Calculate and Update the Mortality Rate column
-- The mortality rate is calculated using the Total Deaths and Population data

UPDATE final_project  
SET Mortality_Rate = (Total_Deaths / Population) * 100
WHERE Total_Deaths IS NOT NULL AND Population IS NOT NULL;

/*
-- Step 11: Export recordset to an external file
-- Step 12: Open it on Tableau and make the apropriate combinations to make the data visual (done outside MySQL)
-- END OF SCRIPT 
*/