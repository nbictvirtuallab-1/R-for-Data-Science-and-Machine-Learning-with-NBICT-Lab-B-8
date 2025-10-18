# Multiple Linear Regression

# Importing the Dataset

dataset <- read.csv("50_Startups.csv")

# Encoding the catagorical data

dataset$State <- factor(dataset$State,
                        levels = c("New York" , "California" , "Florida"),
                        labels = c(1 , 2 , 3))

# Splitting the dataset into Training set and Test set

library(caTools)
set.seed(123)

split <- sample.split(dataset$Profit , SplitRatio = 0.8)

training_set <- subset(dataset, split == TRUE)

test_set <- subset(dataset, split == FALSE)

# Fitting the multiple linear regression model to the training set 
# independent variable gulor poriborte shudhu . O dea jete pare
regressor <- lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend + State,
                data = training_set)
summary(regressor)
