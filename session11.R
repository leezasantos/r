# installing packages
install.packages("dplyr")
install.packages("ggplot2")
install.packages("tidyr")
install.packages("PASWR2")

# load libraries
library(dplyr) # data cleaning
library(ggplot2) # data visuals
library(tidyr) # data visuals
library(PASWR2) # z test

# load data, data was converted to csv
df <- read.csv("C:/Users/Leeza A. Santos/OneDrive/MS AHI/HHA 551/strokedata.csv")

# data characteristics
View(df) # view the full dataset in a new window
head(df) # shows 
str(df) # data type of each column 
length(df) # number of columns
nrow(df) # number of rows

# data cleaning
is.null(NULL)
df[is.na(df)] <- 0 # replace all na with 0
df[is.null(df)] <- 0 # replace all null with 0 
sum(is.na(df)) # check
sum(is.null(df)) # check

# summary statistics
summary(df)

#z test
mean(df$avg_glucose_level) # 105.3051
z.test(df$avg_glucose_level, mu = 105, stdev, alternative = c("two.sided", "less", "greater"), 
       sd = stdev, n=length(x), conf.level = 0.95)    # Error in sigma.x^2 : non-numeric argument to binary operator

prop.test

# t test
mean(df$bmi) # 28.89324
t.test(df$bmi, mu=28, alternative = 'less')

# to determine distribution I used ks.test
ks.test(df$avg_glucose_level,df$bmi,"pnorm", mean=mean(mydata), sd=sd(mydata))

# standard error
var.test(df$avg_glucose_level,df$bmi)

# correlation
cor.test(df$avg_glucose_level,df$bmi,method="kendall")
cor.test(df$avg_glucose_level,df$bmi,method="pearson")
cor.test(df$avg_glucose_level,df$bmi,method="spearman")

# covariance
cov(df$avg_glucose_level,df$bmi)
cov(df$avg_glucose_level,df$bmi,method="kendall")
cov(df$avg_glucose_level,df$bmi,method="pearson")
cov(df$avg_glucose_level,df$bmi,method="spearman")
