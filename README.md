<a id="readme-top"></a>

<div align="center">
  <h1 align="center">Crime Rate Analysis in Toronto</h1>
  <h5 align="center">CS 59000 - Data Analytics in Business using R - Course Project</h5>
</div>

## Technologies Used
[![R](https://img.shields.io/badge/r-%23276DC3.svg?style=for-the-badge&logo=r&logoColor=white)](https://www.r-project.org/)
[![RStudio](https://img.shields.io/badge/RStudio-4285F4?style=for-the-badge&logo=rstudio&logoColor=white)](https://posit.co/products/open-source/rstudio/)
[![Shiny](https://img.shields.io/badge/Shiny-FF9900?style=for-the-badge)](https://huggingface.co/docs/transformers/en/model_doc/bert)
[![Microsoft Excel](https://img.shields.io/badge/Microsoft_Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)](https://www.microsoft.com/en-us/microsoft-365/excel)
[![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/)

## Overview
By leveraging advanced statistical methods and machine learning techniques, the analysis of Toronto's crime rates uncovers patterns, trends, and insights that inform data-driven public safety strategies. This analysis delves into crime rates in Toronto, identifying key factors contributing to crime across different neighborhoods and time periods. The goal is to support law enforcement agencies and policymakers in making data-driven decisions that enhance community safety, optimize resource allocation, and implement proactive measures. By offering a deeper understanding of the dynamics of crime in Toronto, this work provides actionable insights for effectively reducing crime rates.

## Data
The analysis utilizes datasets from the Toronto Police Service Public Safety Data Portal, which provides open access to police information through downloadable datasets, data visualizations, web mapping applications, and supporting documentation. These resources are designed to enhance public understanding and open data literacy regarding police information.

The primary dataset includes all Major Crime Indicators (MCI) occurrences by reported date and related offenses. Additionally, a second dataset is used, detailing all homicides that occurred in the city of Toronto from 2004 onwards. Together, these datasets offer comprehensive insights into crime trends and patterns across the city.



## Research Questions
- What are the trends in the overall incidence of Major Crime Indicators (MCI) occurrences over time?​
- Are there any geographic clusters of MCI occurrences and related offenses within the dataset?​
- Is there a seasonal or temporal pattern in the occurrence of specific MCIs, such as a higher incidence during certain months or days of the week?​
- What is the distribution of MCI occurrences across different locations (e.g., residential areas, commercial areas, public spaces) and what factors may contribute to such patterns?​
- Are there any associations or correlations between specific types of MCI occurrences, for example, do certain types of offenses tend to occur together or in a particular order?​
- Is there any time gap between an incident occurring and it being reported?​
- Where in Toronto were those crimes most likely to occur?​
- What types of crimes are most frequent at each hour of the day?


## Results
### Data Preparation
During the initial exploration of the data, we discovered significant duplication in the event_unique_id field, indicating that the same crime was reported multiple times.

The occurrence year of incidents ranged from 2000 to 2022, but the report year for all crimes is between 2014 and 2022. This suggests that some incidents reported after 2014 actually occurred in prior years. For example, 24 incidents were reported to have occurred in 2000, and 17 in 2001. However, the vast majority of occurrences happened after 2014. To maintain the accuracy and relevance of the analysis, we focused exclusively on incidents from 2014 to 2022.
<div align="center">
    <img width="500" alt="image" src="https://github.com/user-attachments/assets/b7ecdd8c-15a7-4dd0-8b3d-4c0d177d8e57">
    <img width="500" alt="image" src="https://github.com/user-attachments/assets/4d68107a-7b8e-4116-8411-4065dcf9e4c3">
    <img width="500" alt="image" src="https://github.com/user-attachments/assets/255759ba-ec9d-480b-bf16-1d8debd7a5f6">
    <img width="500" alt="image" src="https://github.com/user-attachments/assets/14ac0e16-534e-4f05-a17c-07d1f0a0f254">
</div>

#### To use the dataset,
1. Download the zip file from the **data** folder.
2. Unzip it and extract the file ‘Major_Crime_Indicators_Open_Data.csv’ into the data folder.
