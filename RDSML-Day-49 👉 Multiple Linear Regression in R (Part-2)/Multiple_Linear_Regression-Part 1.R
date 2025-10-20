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

# Predicting the Test set result

y_pred <- predict(regressor , test_set)
y_pred

# Stepwise Backward Elimination

regressor <- lm(formula = Profit ~ R.D.Spend + Administration + Marketing.Spend ,
                data = training_set)
summary(regressor)

regressor <- lm(formula = Profit ~ R.D.Spend + Marketing.Spend ,
                data = training_set)
summary(regressor)

# Automated Stepwise Backward Elimination

full_model <- lm(Profit ~ . , data = training_set)
summary(full_model)

final_model <- step(full_model , direction = "backward")

summary(final_model)

# Assumptions testing
cor(training_set$R.D.Spend , training_set$Profit, method = )

cor.test(training_set$R.D.Spend , training_set$Profit)





# Checking for the independence of errors

install.packages("lmtest")
library(lmtest)

dwtest(final_model)

# Normality of residuals 

shapiro.test(rstandard(final_model))

# p value <<.05 mane normal distribution violet hoise

qqnorm(rstandard(final_model))
qqline(rstandard(final_model))

# Checking multicolinearity

library(car)
vif(final_model)
# vif less than 5 hote hobe

# Homoscedasticity assumption

plot(final_model$fitted.values, rstandard(final_model))
abline( h = 0 , col = "red")
bptest(final_model)



