
# Loading the dataset
myData = ToothGrowth

# Converting the variable dose from a numeric to a factor variable
myData$dose = as.factor(myData$dose)

library(ggplot2)

# Basic boxplot
ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot()

# Rotating the box plot
ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot() +
  coord_flip()

# Notched box plot
ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot(notch = T)

# Changing outlier color, shape, and size
ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot(outlier.color = "red", outlier.shape = 8,
               outlier.size = 3)

# Choosing which item to display
ggplot(myData, aes(x = dose, y = len)) + 
  geom_boxplot(outlier.color = "red", outlier.shape = 8,
               outlier.size = 3) +
  scale_x_discrete(limits = c("2"))

# Changing box plot line colors by groups
ggplot(myData, aes(x = dose, y = len, color = dose)) + 
  geom_boxplot()

# Changing the item order
ggplot(myData, aes(x = dose, y = len, color = dose)) + 
  geom_boxplot() +
  scale_x_discrete(limit = c("2", "0.5", "1"))

# Box plot with multiple groups
ggplot(myData, aes(x = dose, y = len, fill = supp)) + 
  geom_boxplot()

# Changing the position
ggplot(myData, aes(x = dose, y = len, fill = supp)) + 
  geom_boxplot(position = position_dodge(1))