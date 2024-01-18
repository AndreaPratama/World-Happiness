-- WORLD HAPPINESS 2015th

-- Tambahkan kolom Year ke Tabel 2015
ALTER TABLE [dbo].[2015]
ADD Year INT;
--
UPDATE [dbo].[2015]
SET [dbo].[2015].Year = 2015;

-- What is the distribution of the happiness scores for each country?

SELECT Country, Happiness_Score
FROM [dbo].[2015]

-- Which country has the highest happiness score?

SELECT TOP 10 Country, Happiness_Score AS Highest_Happiness_Score
FROM [dbo].[2015]
ORDER BY Highest_Happiness_Score DESC;


-- What is the correlation between GDP per capita and happiness score?

SELECT Country, Economy_GDP_per_Capita, Happiness_Score AS Happiness_Score
FROM [dbo].[2015];


-- What is the distribution of the factors that contribute to happiness?

SELECT Country, Family,Freedom,Happiness_Rank
FROM [dbo].[2015];


-- Which region of the world has the highest average happiness score?

SELECT
    Region,
    ROUND(AVG(Happiness_Score), 2) AS Avg_Happiness_Score
FROM [dbo].[2015]
GROUP BY Region
ORDER BY Avg_Happiness_Score DESC;

-----------------------------------------------------------------------------------------------------------------


-- WORLD HAPPINESS 2016th

-- Tambahkan kolom Year ke Tabel 2016
ALTER TABLE [dbo].[2016]
ADD Year INT;
--
UPDATE [dbo].[2016]
SET [dbo].[2016].Year = 2016;

-- What is the distribution of the happiness scores for each country?

SELECT Country, Happiness_Score
FROM [dbo].[2016]

-- Which country has the highest happiness score?

SELECT TOP 10 Country, Happiness_Score AS Highest_Happiness_Score
FROM [dbo].[2016]
ORDER BY Highest_Happiness_Score DESC;


-- What is the correlation between GDP per capita and happiness score?

SELECT Country, Economy_GDP_per_Capita, Happiness_Score AS Happiness_Score
FROM [dbo].[2016];


-- What is the distribution of the factors that contribute to happiness?

SELECT Country, Family,Freedom,Happiness_Rank
FROM [dbo].[2016];


-- Which region of the world has the highest average happiness score?

SELECT
    Region,
    ROUND(AVG(Happiness_Score), 2) AS Avg_Happiness_Score
FROM [dbo].[2016]
GROUP BY Region
ORDER BY Avg_Happiness_Score DESC;

------------------------------------------------------------------------------------------------------------

-- WORLD HAPPINESS 2017th

-- Tambahkan kolom Year ke Tabel 2017
ALTER TABLE [dbo].[2017]
ADD Year INT;
--
UPDATE [dbo].[2017]
SET [dbo].[2017].Year = 2017;

SELECT * FROM [dbo].[2017]
WHERE Country = 'Hong Kong S.A.R., China'

-- Add Region column to Table 2017

ALTER TABLE [dbo].[2017]
ADD Region NVARCHAR(MAX);

-- Update Region column based on data from Table 2015
UPDATE [dbo].[2017]
SET [dbo].[2017].Region = [dbo].[2015].Region
FROM [dbo].[2017]
INNER JOIN [dbo].[2015] ON [dbo].[2017].Country = [dbo].[2015].Country;

-- Update Region column based on data from Table 2016 (if any)
UPDATE [dbo].[2017]
SET [dbo].[2017].Region = [dbo].[2016].Region
FROM [dbo].[2017]
INNER JOIN [dbo].[2016] ON [dbo].[2017].Country = [dbo].[2016].Country
WHERE [dbo].[2017].Region IS NULL;


-- Update NULL value for Taiwan Province of China
UPDATE [dbo].[2017]
SET [dbo].[2017].Region = 'Asia'
WHERE [dbo].[2017].Country = 'Taiwan Province of China' AND [dbo].[2017].Region IS NULL;

-- Update NULL value for Hong Kong S.A.R., China
UPDATE [dbo].[2017]
SET [dbo].[2017].Region = 'Asia'
WHERE [dbo].[2017].Country = 'Hong Kong S.A.R., China' AND [dbo].[2017].Region IS NULL;


-- What is the distribution of the happiness scores for each country?

SELECT Country, Happiness_Score
FROM [dbo].[2017]

-- Which country has the highest happiness score?

SELECT TOP 10 Country, Happiness_Score AS Highest_Happiness_Score
FROM [dbo].[2017]
ORDER BY Highest_Happiness_Score DESC;


-- What is the correlation between GDP per capita and happiness score?

SELECT Country, Economy_GDP_per_Capita, Happiness_Score AS Happiness_Score
FROM [dbo].[2017];


-- What is the distribution of the factors that contribute to happiness?

SELECT Country, Family,Freedom,Happiness_Rank
FROM [dbo].[2017];


-- Which region of the world has the highest average happiness score?

SELECT
    Region,
    ROUND(AVG(Happiness_Score), 2) AS Avg_Happiness_Score
FROM [dbo].[2017]
GROUP BY Region
ORDER BY Avg_Happiness_Score DESC;


------------------------------------------------------------------------------------------------------------------

-- WORLD HAPPINESS 2018th

-- Tambahkan kolom Year ke Tabel 2018
ALTER TABLE [dbo].[2018]
ADD Year INT;
--
UPDATE [dbo].[2018]
SET [dbo].[2018].Year = 2018;

SELECT * FROM [dbo].[2018]
WHERE Country_or_region = 'Northern Cyprus'

-- Add Region column to Table 2018
ALTER TABLE [dbo].[2018]
ADD Region NVARCHAR(MAX);

-- Update Region column based on data from Table 2015
UPDATE [dbo].[2018]
SET [dbo].[2018].Region = [dbo].[2015].Region
FROM [dbo].[2018]
INNER JOIN [dbo].[2015] ON [dbo].[2018].Country_or_region = [dbo].[2015].Country;

-- Update Region column based on data from Table 2016
UPDATE [dbo].[2018]
SET [dbo].[2018].Region = [dbo].[2016].Region
FROM [dbo].[2018]
INNER JOIN [dbo].[2016] ON [dbo].[2018].Country_or_region = [dbo].[2016].Country;

-- Update Region column based on data from Table 2017
UPDATE [dbo].[2018]
SET [dbo].[2018].Region = [dbo].[2017].Region
FROM [dbo].[2018]
INNER JOIN [dbo].[2017] ON [dbo].[2018].Country_or_region = [dbo].[2017].Country;

-- Update NULL value in Region column for Trinidad & Tobago
UPDATE [dbo].[2018]
SET [dbo].[2018].Region = 'Caribbean'
WHERE [dbo].[2018].Country_or_region = 'Trinidad & Tobago' AND [dbo].[2018].Region IS NULL;

-- Update NULL value in Region column for Northern Cyprus
UPDATE [dbo].[2018]
SET [dbo].[2018].Region = 'Europe'
WHERE [dbo].[2018].Country_or_region = 'Northern Cyprus' AND [dbo].[2018].Region IS NULL;



-- What is the distribution of the happiness scores for each country?

SELECT Country_or_region AS Country,
	   Score AS Happiness_Score
FROM [dbo].[2018]

-- Which country has the highest happiness score?

SELECT TOP 10 Country_or_region AS Country,
	   Score AS Highest_Happiness_Score
FROM [dbo].[2018]
ORDER BY Highest_Happiness_Score DESC;


-- What is the correlation between GDP per capita and happiness score?

SELECT Country_or_region, GDP_per_Capita, Score AS Happiness_Score
FROM [dbo].[2018];


-- What is the distribution of the factors that contribute to happiness?

SELECT Country_or_region,Healthy_life_expectancy,Freedom_to_make_life_choices,Overall_rank
FROM [dbo].[2018];

-- Which region of the world has the highest average happiness score?

SELECT
    Region,
    ROUND(AVG(Score), 2) AS Avg_Happiness_Score
FROM [dbo].[2018]
GROUP BY Region
ORDER BY Avg_Happiness_Score DESC;


---------------------------------------------------------------------------------------------------------------------------

-- WORLD HAPPINESS 2019th

-- Tambahkan kolom Year ke Tabel 2019
ALTER TABLE [dbo].[2019]
ADD Year INT;
--
UPDATE [dbo].[2019]
SET [dbo].[2019].Year = 2019;

SELECT * FROM [dbo].[2019]
WHERE Country_or_region = 'Gambia'

-- Add Region column to Table 2019
ALTER TABLE [dbo].[2019]
ADD Region NVARCHAR(MAX);

-- Update Region column based on data from Table 2015
UPDATE [dbo].[2019]
SET [dbo].[2019].Region = [dbo].[2015].Region
FROM [dbo].[2019]
INNER JOIN [dbo].[2015] ON [dbo].[2019].Country_or_region = [dbo].[2015].Country;

-- Update Region column based on data from Table 2016
UPDATE [dbo].[2019]
SET [dbo].[2019].Region = [dbo].[2016].Region
FROM [dbo].[2019]
INNER JOIN [dbo].[2016] ON [dbo].[2019].Country_or_region = [dbo].[2016].Country;

-- Update Region column based on data from Table 2017
UPDATE [dbo].[2019]
SET [dbo].[2019].Region = [dbo].[2017].Region
FROM [dbo].[2019]
INNER JOIN [dbo].[2017] ON [dbo].[2019].Country_or_region = [dbo].[2017].Country;

-- Update Region column based on data from Table 2018
UPDATE [dbo].[2019]
SET [dbo].[2019].Region = [dbo].[2018].Region
FROM [dbo].[2019]
INNER JOIN [dbo].[2018] ON [dbo].[2019].Country_or_region = [dbo].[2018].Country_or_region;

-- Update the NULL value in the Region column for North Macedonia
UPDATE [dbo].[2019]
SET [dbo].[2019].Region = 'Europe'
WHERE [dbo].[2019].Country_or_region = 'North Macedonia' AND [dbo].[2019].Region IS NULL;

-- Update the NULL value in the Region column for Gambia
UPDATE [dbo].[2019]
SET [dbo].[2019].Region = 'Africa'
WHERE [dbo].[2019].Country_or_region = 'Gambia' AND [dbo].[2019].Region IS NULL;



-- What is the distribution of the happiness scores for each country?

SELECT Country_or_region, Score
FROM [dbo].[2019]

-- Which country has the highest happiness score?

SELECT TOP 10 Country_or_region, Score AS Highest_Happiness_Score
FROM [dbo].[2019]
ORDER BY Highest_Happiness_Score DESC;


-- What is the correlation between GDP per capita and happiness score?

SELECT Country_or_region, GDP_per_Capita, Score AS Happiness_Score
FROM [dbo].[2019];


-- What is the distribution of the factors that contribute to happiness?

SELECT Country_or_region,Healthy_life_expectancy,Freedom_to_make_life_choices,Overall_rank
FROM [dbo].[2019];

-- Which region of the world has the highest average happiness score?

SELECT
    Region,
    ROUND(AVG(Score), 2) AS Avg_Happiness_Score
FROM [dbo].[2019]
GROUP BY Region
ORDER BY Avg_Happiness_Score DESC;


-- Merge tables to get the data that will be made into a dashboard


SELECT 
    Country,
    Region AS Region_2015,
    Happiness_Rank AS Happiness_Rank_2015,
    Happiness_Score AS Happiness_Score_2015,
    Economy_GDP_per_Capita AS Economy_GDP_per_Capita_2015,
    Family AS Family_2015,
    Freedom AS Freedom_2015,
    Health_life_expectancy AS Healthy_2015,
    '2015' AS Year
FROM [dbo].[2015]

UNION ALL

SELECT 
    Country,
    Region AS Region_2016,
    Happiness_Rank AS Happiness_Rank_2016,
    Happiness_Score AS Happiness_Score_2016,
    Economy_GDP_per_Capita AS Economy_GDP_per_Capita_2016,
    Family AS Family_2016,
    Freedom AS Freedom_2016,
    Health_life_expectancy AS Healthy_2016,
    '2016' AS Year
FROM [dbo].[2016]

UNION ALL

SELECT 
    Country,
    Region AS Region_2017,
    Happiness_Rank AS Happiness_Rank_2017,
    Happiness_Score AS Happiness_Score_2017,
    Economy_GDP_per_Capita AS Economy_GDP_per_Capita_2017,
    Family AS Family_2017,
    Freedom AS Freedom_2017,
    Health_life_expectancy AS Healthy_2017,
    '2017' AS Year
FROM [dbo].[2017]

UNION ALL

SELECT 
    Country_or_region AS Country,
    Region AS Region_2018,
    Overall_rank AS Happiness_Rank_2018,
    Score AS Happiness_Score_2018,
    GDP_per_Capita AS Economy_GDP_per_Capita_2018,
    Social_support AS Family_2018,
    Freedom_to_make_life_choices AS Freedom_2018,
    Healthy_life_expectancy AS Healthy_2018,
    '2018' AS Year
FROM [dbo].[2018]

UNION ALL

SELECT 
    Country_or_region AS Country,
    Region AS Region_2019,
    Overall_rank AS Happiness_Rank_2019,
    Score AS Happiness_Score_2019,
    GDP_per_Capita AS Economy_GDP_per_Capita_2019,
    Social_support AS Family_2019,
    Freedom_to_make_life_choices AS Freedom_2019,
    Healthy_life_expectancy AS Healthy_2019,
    '2019' AS Year
FROM [dbo].[2019];

---------------------------------------------------- THE END -------------------------------------------------------------
