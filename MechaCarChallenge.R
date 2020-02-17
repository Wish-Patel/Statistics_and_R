MPG_data <- read.csv('MechaCar_mpg.csv',stringsAsFactors = F) #read in dataset

lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=MPG_data) #generate multiple linear regression model

summary(lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance + AWD,data=MPG_data)) #generate summary statistics


library(tidyverse)

Suspension_data <- read.csv('Suspension_Coil.csv',stringsAsFactors = F) #read in dataset

#ot1 <- Suspension_data %>% filter(Manufacturing_Lot=="Lot1") #select only data points in lot1
#lot2 <- Suspension_data %>% filter(Manufacturing_Lot=="Lot2") #select only data points in lot2
#lot3 <- Suspension_data %>% filter(Manufacturing_Lot=="Lot3") #select only data points in lot3

#Summary statistics
install.packages ("pastecs")
library(pastecs)
stat.desc(Suspension_data)


#T test
population_table <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import used car dataset
sample_table <- population_table %>% sample_n(50) #randomly sample 50 data points
t.test((sample_table$PSI),mu=mean((population_table$PSI))) #compare sample versus population means
