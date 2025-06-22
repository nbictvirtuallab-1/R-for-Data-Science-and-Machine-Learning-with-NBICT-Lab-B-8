#Importing the dataset
#to import csv file we use read.csv function
dataset = read.csv("data.csv")

#importing the library
library(ggplot2)
#basic histogram using ggplot2

ggplot(dataset, aes(x = weight)) +
  geom_histogram()

#changing the width of bin


ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 1, color = "black")

#changing colors

ggplot(dataset, aes(x = weight)) +
  geom_histogram(binwidth = 1, color = "black", fill  = "lightblue")


#adding the mean line

myPlot= ggplot(dataset, aes(x = weight)) +
  geom_histogram(color = "black", fill = "white")

myPlot + geom_vline( aes( xintercept = mean(weight)),
                     color = "blue", linetype = "dashed", size= 1)


#Histogram with density plot

ggplot(dataset, aes(x = weight)) +
  geom_histogram(aes( y = after_stat(density)), color = "black", fill  = "white") +
  geom_density( fill = "blue", alpha = .2)

# alpha is used to increase transparency

#density plot is a smooth version of a histogram

# changing bin color and fill color


ggplot(dataset, aes(x = weight)) +
  geom_histogram( color = "darkblue", fill  = "lightblue") 
  

