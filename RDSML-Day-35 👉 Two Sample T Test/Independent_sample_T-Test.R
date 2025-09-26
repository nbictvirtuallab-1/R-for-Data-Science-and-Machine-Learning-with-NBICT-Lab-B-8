# 2 sample T test / Independent sample T test

# Importing the dataset

dataset = read.csv("scores.csv")

# Checking for the normal distribution

shapiro.test(dataset$Male)

shapiro.test(dataset$Female)

# Checking for the homogeneity of variances

var.test( x = dataset$Male, y = dataset$Female)

# Running the independent variable T test

t.test(x = dataset$Male, y = dataset$Female, var.equal = TRUE)
