
# Descriptive statistics using the psych package

#install.packages("psych")
library(psych)

data()
AirPassengers
BOD

# Using the New York airport flight data
#install.packages("nycflights13")
attach(nycflights13::flights)

# Lets look at the first 6 records using the head() function
head(nycflights13::flights)
distance
summary(distance)
describe(distance)

demo = cbind(arr_delay, dep_delay, distance)
#introducing the colnames() function
colnames(demo) = c("Arrival delay", "Departure delay", "Distance travelled")
describe(demo)
#introducing the hist() function
dep_delay
hist(dep_delay)
#how to group descritive statistics
head(nycflights13::flights)
summary(carrier)
carrier.fact = factor(carrier)
summary(carrier.fact)
describeBy(distance, group = carrier)

#Two levels of aggregation
#now we connect 3 variables

aggregate(distance, by = list(carrier, month), FUN = mean, na.rm = TRUE)

#na.rm = TRUE means removal of missing data,FUN means function

aggregate(distance, by = list(carrier, month), FUN = sd, na.rm = TRUE)
