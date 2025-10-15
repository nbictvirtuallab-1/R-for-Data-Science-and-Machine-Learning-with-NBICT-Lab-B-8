# simple Linear Regression

# Importing the dataset

dataset <- read.csv("Salary_Data.csv")

# Splitting the dataset into the training set and test set

install.packages("caTools")
library(caTools)
set.seed(123)
split <- sample.split(dataset$Salary , SplitRatio = 2/3)
split

training_set <- subset(dataset , split == TRUE)

test_set <- subset(dataset , split == FALSE)

# Fitting the simple linear regression model to the training set
# 1st e dependent variable , pore independent variable
regressor <- lm (formula =Salary ~ YearsExperience , 
                 data = training_set )
