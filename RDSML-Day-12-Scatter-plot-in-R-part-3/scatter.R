library(ggplot2)
dataset = mtcars

#Converting cyl column from a numeric to a factor variable

dataset$cyl = as.factor(dataset$cyl)

#Adding regression lines based on multiple groups

ggplot(dataset, aes(x=wt, y=mpg, colour = cyl)) +
  geom_point() +
  geom_smooth(method=lm)

#Removing the confidence intervals

ggplot(dataset,aes(x=wt,y=mpg, colour = cyl)) +
  geom_smooth(method = lm,se=FALSE)

#Extending the regression lines

ggplot(dataset,aes(x=wt,y=mpg,colour = cyl)) +
  geom_point() +
  geom_smooth(method = lm, se=FALSE, fullrange = TRUE)

#filling the color of confidence bands

ggplot(dataset, aes( x = wt, y = mpg, color = cyl, shape = cyl) ) +
  geom_point() +
  geom_smooth(method = lm,aes(fill= cyl))

#Changing point shapes manually

ggplot(dataset, aes( x = wt, y = mpg, color = cyl, shape = cyl) ) +
  geom_point() +
  geom_smooth(method = lm,se= FALSE, fullrange = TRUE) +
  scale_shape_manual(values=c(3,16,17)) +
  theme(legend.position = "top")

#Changing point colors manually

ggplot(dataset, aes( x = wt, y = mpg, color = cyl, shape = cyl) ) +
  geom_point() +
  geom_smooth(method = lm,se= FALSE, fullrange = TRUE) +
  scale_shape_manual(values=c(3,16,17)) +
  scale_color_manual(values = c("darkblue", "grey", "orange")) +
  theme(legend.position = "top")

#Customizing scatter plots 

ggplot(dataset, aes( x = wt, y = mpg, color = cyl, shape = cyl) ) +
  geom_point() +
  geom_smooth(method = lm,se= FALSE, fullrange = TRUE) +
  scale_shape_manual(values=c(3,16,17)) +
  scale_color_manual(values = c("darkblue", "grey", "orange")) +
  labs(title = "Miles per gallon \naccording to the weight",
       x= "weight", y = "Miles/Gallon") +
  theme(legend.position = "top")

#Customizing themes

plot = ggplot(dataset, aes( x = wt, y = mpg, color = cyl, shape = cyl) ) +
  geom_point() +
  geom_smooth(method = lm,se= FALSE, fullrange = TRUE) +
  scale_shape_manual(values=c(3,16,17)) +
  scale_color_manual(values = c("darkblue", "grey", "orange")) +
  labs(title = "Miles per gallon \naccording to the weight",
       x= "weight", y = "Miles/Gallon") +
  theme(legend.position = "top")

plot + theme_classic()
plot + theme_minimal()




      