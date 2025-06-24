dataset = data.frame(dose = c("D0.5","D1", "D2"), 
                     len = c(4.2, 10, 29.5))
library(ggplot2)

#basic barplot

ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity")

#horizontal bar plot

ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity") +
  coord_flip()

#changing the width of bar

ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity", width = 0.5) 

#changing color


ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",color = "blue",fill = "white", width = 0.5)

#Minimal theme with blue fill color

ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",fill = "steelblue") +
  theme_minimal()

#Barplot with labels
#Outside bars


ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",fill = "steelblue") +
  geom_text(aes (label = len)) + 
  theme_minimal()

#vertical justification


ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",fill = "steelblue") +
  geom_text(aes (label = len), vjust = - 0.5, size = 3, color = "#9F9F9F") + 
  theme_minimal()


#inside bar

ggplot( data = dataset, aes(x = dose, y = len)) +
  geom_bar(stat = "identity",fill = "steelblue") +
  geom_text(aes (label = len), vjust = 1.6, size = 3, color = "white") + 
  theme_minimal()

mycardata = mtcars
#barplot of counts
#to make a barplot of counts,we use mtcars dataset

ggplot(data = mycardata, aes(x = factor(cyl))) +
  geom_bar(stat = "count", width = 0.7, fill = "steelblue") +
  theme_minimal()
