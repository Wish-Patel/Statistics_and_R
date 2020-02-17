demo_table <- read.csv(file='demo.csv',check.names=F,stringsAsFactors = F)

library(jsonlite)

demo_table2 <- fromJSON(txt='demo.json')

library(tidyverse)

#using tidyverse mutate to add a column to the dataset
demo_table <- demo_table %>% mutate(Mileage_per_Year = Total_Miles/(2020-Year),IsActive = TRUE) 

#using group_by and summerize to group vehicles condition and determining their avg mileage
summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer)) #create summary table

summarize_demo <- demo_table2 %>% group_by(condition) %>% summarize(Mean_Mileage=mean(odometer),Maximum_Price=max(price),Num_Vehicles=n()) #create summary table with multiple columns

demo_table3 <- read.csv(file='demo2.csv', check.names=F, stringsAsFactors=F)
  