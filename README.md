# World Happiness Analyze

![](wh_hero.jpg)

## Introduction

This project aims to analyze and visualize the World Happiness Report data to gain insight into the factors influencing global happiness scores from 2015 to 2019.

## Problem Statement

Explore and understand the patterns, trends, and contributing factors to happiness scores worldwide. Answer specific questions regarding regional variations, key factors, and changes over time.

## Skill Demonstrated

- SQL database management
- Data querying and transformation
- Power BI for data visualization
- Dashboard creation
- Data analysis and interpretation

## Data Sourcing

The project utilizes datasets from the World Happiness Report obtained from Hackernoon. The datasets are divided into multiple years, with each year representing a separate dataset. The primary focus is on the following datasets:

- World Happiness Report 2015
- World Happiness Report 2016
- World Happiness Report 2017
- World Happiness Report 2018
- World Happiness Report 2019

These datasets provide comprehensive information on various factors contributing to happiness scores across different countries for the specified years.

_Additional Information: In the dataset there is data based on the original suervey (said on the website), namely in 2017, and in making the dashboard later it will be simplified to facilitate analysis._

## Data Transformation

Data was transformed using SQL queries to merge, clean, and organize datasets from different years into a unified format suitable for analysis. Additionally, calculations were performed to derive relevant metrics.

### Data Transformation using SQL ( Include Missing Value, Update, and Add New Column )

#### Update & Missing Value

- 2017 Table

As said on the website, here is a little picture of the value in the 2017 table.)

![](add_update_2017.png)

- 2018 Table

![](add_update_2018.png)

- 2019 Table

![](add_update_2019.png)

#### Add New Column

- Add Year Column

![](sql_add_year_column.png)

#### Aggregation in SQL

- 2015 Table

| SQL Queries | Result |
|----------|----------|
| ![](2015/sql_1_2015.png) | ![](2015/1_2015.png) |
| ![](2015/sql_2_2015.png) | ![](2015/2_2015.png) |
| ![](2015/sql_3_2015.png) | ![](2015/3_2015.png) |
| ![](2015/sql_4_2015.png) | ![](2015/4_2015.png) |
| ![](2015/sql_5_2015.png) | ![](2015/5_2015.png) |

- 2016 Table

| SQL Queries | Result |
|----------|----------|
| ![](2016/sql_1_2016.png) | ![](2016/1_2016.png) |
| ![](2016/sql_2_2016.png) | ![](2016/2_2016.png) |
| ![](2016/sql_3_2016.png) | ![](2016/3_2016.png) |
| ![](2016/sql_4_2016.png) | ![](2016/4_2016.png) |
| ![](2016/sql_5_2016.png) | ![](2016/5_2016.png) |

- 2017 Table (As said on the website, here are the values in the 2017 table.)

| SQL Queries | Result |
|----------|----------|
| ![](2017/sql_1_2017.png) | ![](2017/1_2017.png) |
| ![](2017/sql_2_2017.png) | ![](2017/2_2017.png) |
| ![](2017/sql_3_2017.png) | ![](2017/3_2017.png) |
| ![](2017/sql_4_2017.png) | ![](2017/4_2017.png) |
| ![](2017/sql_5_2017.png) | ![](2017/5_2017.png) |

- 2018 Table

| SQL Queries | Result |
|----------|----------|
| ![](2018/sql_1_2018.png) | ![](2018/1_2018.png) |
| ![](2018/sql_2_2018.png) | ![](2018/2_2018.png) |
| ![](2018/sql_3_2018.png) | ![](2018/3_2018.png) |
| ![](2018/sql_4_2018.png) | ![](2018/4_2018.png) |
| ![](2018/sql_5_2018.png) | ![](2018/5_2018.png) |

- 2019

| SQL Queries | Result |
|----------|----------|
| ![](2019/sql_1_2019.png) | ![](2019/1_2019.png) |
| ![](2019/sql_2_2019.png) | ![](2019/2_2019.png) |
| ![](2019/sql_3_2019.png) | ![](2019/3_2019.png) |
| ![](2019/sql_4_2019.png) | ![](2019/4_2019.png) |
| ![](2019/sql_5_2019.png) | ![](2019/5_2019.png) |

#### SQL Queries to combine all tables as data that will be used to create Dashboards.

| SQL Queries | Result |
|----------|----------|
| ![](sql_dashboard.png) | ![](dashboard_dataset.png) |

#### Import Dataset to Power BI 

![](import_powerbi.png)

### DAX Measure & Create New Column ( Power BI )

- Measure

![](measure_powerbi.png)

- Create New Column

| DAX | Result |
|----------|----------|
| ![](column_powerbi.png) | ![](new_column_powerbi.png) |

## Modeling

While the project does not involve complex modeling, certain SQL queries involve aggregations and calculations to provide meaningful insights.

## Analyze & Visualization

The analysis includes answering specific questions such as regional happiness variations, factors influencing happiness scores, and changes over time. Visualizations in Power BI, including charts and graphs, aid in presenting key findings.

## Conclusion & Recommendation

The analysis reveals insights into global happiness trends. Conclusions drawn from the data are summarized, and recommendations for further exploration or actions are provided.
