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

Data table has 26 columns and 5021 rows. Imported data table as cvs file into PostreSQL. Data was checked for duplicate row, white spaces and null values. The 'number' column is the primary key. precip_type has 3298 Null values but upon checking and understanding this data column, Null value for precip_type means there is no precipitation, so the precip_type for Null is clear sky. 'date' column has 976 null values but they contains geographical locations therefore keeping these rows as is. 

Process Data

PostgreSQL was used to process the dataset. All SQL codes written for data processing and analysis are documented in the "bigfoot_sightings.sql" file uploaded in this repository. Link: https://github.com/riiitalam/finding-bigfoot/commit/92bbaeadf9b6c6d6000b5a59330db969be2c6b0a

Analyse Data

Finalized datasets were imported into Tableau and visualized with various plots to identify trends, patterns and relationships. Mapped all sightings on geographic map to identify demographic frequency of bigfoot encounters. Also visualzed the sighting frequency distribution by states and counties. Plotted heatmaps for sighting frequency by season, months and day of month and day of week to find patterns. Graphed each weather variables against sighting frequency to determine the most probable weather conditions bigfoots are out spotted. Summarized patterns and trends into informative guidelines for planning a quest to find bigfoots.

Share Findings

Result of analysis is presented in the interactive Tableau visualization dashboard at https://public.tableau.com/app/profile/rita.lam/viz/BigfootSightings_16795970192780/Dashboard2

Act Phase 
Follow the guideline to choose the best day and time, then get ready to go on a quest for finding bigfoot!
