# Setup packages andd data loading

#install.packages(c("e1071", "ggplot2", "dplyr"))

library(e1071)
library(ggplot2)
library(dplyr)

# Loading the dataset

dataset <- read.csv("day.csv")

# Basic cleaning and feature selection 

bike <- dataset %>% 
  select(cnt, temp, atemp, hum, windspeed, season, yr, mnth,
         holiday,weekday, workingday, weathersit)

str(bike)

# Convert categorical variables to factors

bike <- bike %>%
  mutate(
    season = factor(season),
    yr = factor(yr),
    mnth = factor(mnth),
    holiday = factor(holiday),
    weekday = factor(weekday),
    workingday = factor(holiday),
    weathersit = factor(weathersit)
  )

str(bike)

# Train/Test split # set.seed(123) dile bar baar same value asbe
set.seed(123)

n <- nrow(bike) 

indices <- seq_len(n)

# idx for index 

train_idx <- sample(indices, size = 0.7*n)

train_set <- bike[train_idx, ]

# column er ghor faka rakhlam mane sob koita column thakbe

test_set <- bike[-train_idx, ]

# minus - diye train_idx theke bad diye ja thakbe seta diye test det hobe

# Scale numeric features

# Identify numeric predictors

num_cols <- c("temp", "atemp", "hum", "windspeed")

# Computing scaling parameters on training data

train_means <- sapply(train_set[, num_cols], mean)

train_sds <- sapply(train_set[, num_cols], sd)

# Scale Function
# 4 ta individual column er value theke mean bad diye
# sd diye vag korbo,tai ei function
# last e df dilam jeno full dataframe cover kore

scale_num <- function(df){
  df[, num_cols] <- sweep(df[, num_cols], 2, train_means, "-")
  df[, num_cols] <- sweep(df[, num_cols], 2, train_sds, "/")
  df
}

# train_set ke df er moddhe dhukiye dite hobe

train_scaled <- scale_num(train_set)
test_scaled <- scale_num(test_set)

# Building a linear regression model

lm_model <- lm(cnt ~ ., data = train_scaled)

summary(lm_model)

# Now we will perform prediction

lm_pred <- predict(lm_model, newdata = test_scaled)

# Evaluation matrix for linear regression
# Calculating root mean square error

rmse <- function(actual, pred) sqrt(mean((actual-pred)^2))

lm_rmse <- rmse(test_scaled$cnt, lm_pred) 
lm_rmse

# Calculating mean absolute error

mae <- function(actual,pred) mean(abs(actual-pred))
lm_mae <- mae(test_scaled$cnt, lm_pred)
lm_mae; lm_rmse # when we use ; both values appear at the same time

# Building support vector regression model (svr) 

svr <- svm (cnt ~ . , data = train_scaled, kernel = "linear")
svr_pred <- predict(svr, newdata = test_scaled)
svr_pred
svr_rmse <- rmse(test_scaled$cnt, svr_pred) 
svr_mae <- mae(test_scaled$cnt, svr_pred)
svr_rmse; svr_mae

# Non Linear support vector regression (RBF kernel) radial basis function

svr_rbf <- svm(
  cnt ~ .,
  data = train_scaled,
  kernel = "radial", 
  cost =10,
  gamma =0.1,
  epsilon = 0.1
)

svr_rbf_pred <- predict(svr_rbf, newdata = test_scaled)

# Computing the evaluation parameters

svr_rbf_rmse <- rmse(test_scaled$cnt, svr_rbf_pred) 
svr_rbf_mae <- mae(test_scaled$cnt, svr_rbf_pred)
svr_rbf_rmse; svr_rbf_mae


