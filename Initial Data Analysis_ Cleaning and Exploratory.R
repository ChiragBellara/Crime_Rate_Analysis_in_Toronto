# This is the initial file for Assignment 1 - Tidying and Exploratory analysis of the Data
if(!('readr' %in% installed.packages())){
  install.packages('readr')
}
library('readr')

# Load the dataset
crimes_data <- read_csv('data/Major_Crime_Indicators_Open_Data.csv')
print(head(crimes_data))

names(crimes_data)


# Initial Data Exploration ------------------------------------------------
if(!('dplyr' %in% installed.packages())){
  install.packages('dplyr')
}
library('dplyr')

if(!('ggplot2' %in% installed.packages())){
  install.packages('ggplot2')
}
library(ggplot2)

# Getting the Count of Each category of Crime
table(unlist(crimes_data$MCI_CATEGORY))

# Plotting bar graph for Major Crime Indicators
ggplot(crimes_data, aes(x = MCI_CATEGORY)) +
  geom_bar() +
  labs(x = "Offence", 
       y = "Total Number of Criminal Cases from 2014 to 2022", 
       title = "Major Crime Indicator")

# Getting the Count of Number of Crimes each year
cases_count <- crimes_data %>% 
  count(REPORT_YEAR) %>%
  group_by(REPORT_YEAR)
cases_count

# Plotting Line Chart for Total Criminal Cases from 2014 to 2022
ggplot(cases_count, aes(x = REPORT_YEAR, y = n, label=n)) +
  geom_line() +
  geom_point() +
  geom_text(hjust=0, vjust=0) +
  labs(x = "Year", 
       y = "Total Number of Criminal Cases throughout 2014 to 2022", 
       title = "Yearwise total Criminal Cases throughout 2014 to 2022")

# Getting the Count of Number of Crimes based on Premises Type
cases_count_premises <- crimes_data %>% 
  count(PREMISES_TYPE) %>%
  group_by(PREMISES_TYPE)
cases_count_premises

# Plotting Pie chart for crime according to Premises Type
if(!('lessR' %in% installed.packages())){
  install.packages('lessR')
}
library(lessR)

PieChart(PREMISES_TYPE, 
         data = crimes_data,
         hole = 0,
         main = NULL)




