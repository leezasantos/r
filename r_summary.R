# installing packages
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")


# load libraries
library(dplyr) # data cleaning
library(ggplot2) # data visuals
library(tidyr) # data visuals


# load data, data was cleaned prior 
df <- read.csv("C:/Users/Leeza A. Santos/OneDrive/MS AHI/HHA 550/Group/csv_diabetic_data_cleaned.csv")


# data characteristics
View(df)
head(df)
str(df) # data type of each column 
length(df) # length and two dimentional objects


# data cleaning
is.null(NULL)
df[is.na(df)] <- 0 # replace all na with 0
df[is.null(df)] <- 0 # replace all null with 0 
sum(is.na(df)) # check
sum(is.null(df)) # check


# summary statistics
summary(df)

# box plot for readmitted // length of stay
ggplot(df, aes(x=sex, y=LOS)) + geom_boxplot() + ylim(1, 15) + ggtitle("length of stay per readmission")

# bar chart by age and length of stay
ggplot(df, aes(x=age, y=LOS)) + geom_bar(stat="summary", fun="mean") + ggtitle("length of stay by age")

# pie chart for sex
ggplot(df, aes(x=factor(1), fill=sex)) +
  geom_bar(width = 1)+ coord_polar("y") + scale_fill_grey() + ggtitle("admission by sex")


# stacked bar chart for takes diabetes medicine per readmitted
ggplot(df, aes(x=readmitted, fill=diabetes_med_change)) + geom_bar(stat="count") + scale_fill_grey() +
  ggtitle("diabetes medicine change per readmission")


# scatterplot 
ggplot(df, aes(x=LOS, y=number_diagnoses)) + geom_point(size=2, stat="summary", fun="mean") +
  xlim(1, 15) + ggtitle("number of diagnoses per length of stay")





