# finding-bigfoot
Historical data of bigfoot sightings from year 1869 to 2021

Objective

To discover trends in historial data of bigfoot sightings and predict the most probable time, place and weather conditions to find bigfoots.

Prepare Data

Dataset was downloaded from Kaggle (https://www.kaggle.com/datasets/sridharstreaks/datadna-dataset-challenge-feb-bigfoot-sightings) 
Data Souce: The Bigfoot Field Researchers Organization (BFRO) – www.bfro.net 

Data Columns:

observed
county
state	season
latitude
date
number
classification
temperature_high
temperature_mid
temperature_low
dew_point
humidity
cloud_cover
moon_phas
precip_intensity
precip_probability
precip_type
pressure
summary
uv_index
visibility
wind_bearing
wind_speed
title
longitude

Data was checked for duplicate row, white spaces and zero or null values. Special characters was removed from the industry column. Also checked ceo_data_pay_merged_r3000 dataset is inclusive of all data from ceo_data_pay_merged_sp500 since Russell 3000 index include SP500 companies. 3 row with zero values are found and updated accordingly. Avg worker pay is used to update if median value is not found on reliable salary report sites. Data row for Safehold is removed since median worker pay could not be looked up. Reassigned row number since a data entry was removed. Also checked and casted appropriate data types for each column. Checked for outliers and updated two values in worker_median_pay. Added category column- SP500 to identify if the company is an SP500 also.

Process Data

DBbrowser for SQLite was used to process the dataset. All SQL codes written for data processing and analysis are documented in the "ceo_worker_pay_2023.sql" file uploaded in this repository. Link: 

Analyse Data

Finalized datasets were imported into Tableau and visualized with various plots to identify trends, patterns and relationships. Compared and identified the industry that has the highest inequlity in salary between CEOs and workers. Explored relationship between worker pay and CEO pay and highlight their enormous difference in logarithmic scale. Identify top 10 companies that offer highest pay to their CEOs and lowest pay to their workers. Pay ratio by industry was also looked at and translated into a unit chart where the number of worker pay is plotted against one CEO's pay. Other executive salary were checked to be also very high in cases where CEOs match their salary closely to their employees' pay.

Share Findings

Result of analysis is presented in the interactive Tableau visualization dashboard at https://public.tableau.com/app/profile/rita.lam/viz/BigfootSightings_16795970192780/Dashboard2

Act Phase Regulations on executive salary should be implemented and workers needs to continue to advocate for fair wages.
