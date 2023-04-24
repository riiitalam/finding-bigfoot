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

Total number of row - 5021. Imported data table as cvs file into PostreSQL. Data was checked for duplicate row, white spaces and null values. The 'number' column is the primary key. precip_type has 3298 Null values which is a significant number. Upon checking and understanding this data, Null value most likely mean there is no precipitation, so the precip_type for Null is clear sky. 

Process Data

PostgreSQL was used to process the dataset. All SQL codes written for data processing and analysis are documented in the "bigfoot_sightings.sql" file uploaded in this repository. Link: https://github.com/riiitalam/finding-bigfoot/commit/92bbaeadf9b6c6d6000b5a59330db969be2c6b0a

Analyse Data

Finalized datasets were imported into Tableau and visualized with various plots to identify trends, patterns and relationships. Compared and identified the industry that has the highest inequlity in salary between CEOs and workers. Explored relationship between worker pay and CEO pay and highlight their enormous difference in logarithmic scale. Identify top 10 companies that offer highest pay to their CEOs and lowest pay to their workers. Pay ratio by industry was also looked at and translated into a unit chart where the number of worker pay is plotted against one CEO's pay. Other executive salary were checked to be also very high in cases where CEOs match their salary closely to their employees' pay.

Share Findings

Result of analysis is presented in the interactive Tableau visualization dashboard at https://public.tableau.com/app/profile/rita.lam/viz/BigfootSightings_16795970192780/Dashboard2

Act Phase 
Follow the guideline to choose the best day and time then get ready to go on a quest for finding bigfoot!
