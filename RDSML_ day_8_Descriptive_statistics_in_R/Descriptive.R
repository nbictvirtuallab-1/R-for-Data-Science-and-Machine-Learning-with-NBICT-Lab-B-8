#Descriptive statistics using the psych package
install.packages("psych")
library(psych)

data()
AirPassengers
BOD

#Using the New York Airport flight data
install.packages("nycflights13")
#attach is needed for dataset,rather than library
attach(nycflights13::flights)

#let's look at the 1st 6 records using the head function
head(nycflights13::flights)
summary(distance)
describe(distance)
demo = cbind(arr_delay, dep_delay, distance)
#demo is just a variable name,cbind means column bind
describe(demo)
#press the cursor after describe and press F1

