#One sample z test
# installing the BSDA package

install.packages("BSDA")

library(BSDA)

#Importing the dataset

dataset = read.csv("perfume.csv")
mean(dataset$Machine.1)

z.test(x = dataset$Machine.1,
       alternative = "greater",
       mu = 150,
       sigma.x = 2) 
