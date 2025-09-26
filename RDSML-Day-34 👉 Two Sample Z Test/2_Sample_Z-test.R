# Two sample Z test
# Importing the library

library(BSDA)
# Importing the dataset

dataset = read.csv("Perfume_Two_Sample.csv")

machine1_sd = sd(dataset$Machine.1)
machine2_sd = sd(dataset$Machine.2)

# Running the Z test

z.test(x = dataset$Machine.1, y = dataset$Machine.2,
       sigma.x = machine1_sd, 
       sigma.y = machine2_sd )