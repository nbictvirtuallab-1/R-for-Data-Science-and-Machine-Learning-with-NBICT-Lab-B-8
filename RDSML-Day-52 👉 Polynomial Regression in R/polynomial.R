 # Importing the dataset

dataset <- read.csv("polynom_data.csv")

attach(dataset)

plot(x , y , main = "Polynomial Regression Example" , pch = 19)

# Fit a quadratic polynomial ( degree 2) regression 
polynom_model <- lm(y ~ poly(x , 2 , raw = TRUE))

# degree 2 we jonno 2 , y dependent variable, x independent
# coefficient b0,b1,b2 egulor man ber korte raw = TRUE dite hoi

# View the model summary

summary(polynom_model)

# coefficient er man positive hole curve uporer dike , -ve hole nicher dike

# Create new data for prediction

x_new <- seq(min(x) , max(x) , length.out = 100)

# x_new <- data.frame(x_new)

y_pred <- predict(polynom_model, newdata =data.frame(x = x_new))

pred_data <- data.frame(x_new, y_pred)
# Add fitted curve to the plot 

lines(x_new , y_pred , col = "blue", lwd = 2)

# Fit a cubic polynomial ( degree 3) regression 
polynom_model3 <- lm(y ~ poly(x , 3 , raw = TRUE))
summary(polynom_model3)

lines(x_new , predict(polynom_model3, 
                      newdata =data.frame(x = x_new)) , 
      col = "red", lwd = 2, lty =)
# lwd = line width , lty = line style 2 mane dashed

legend("topright", legend = c("Degree2", "Degree3"),
       col = c("blue", "red"),
       lty = c(1, 2),
       lwd = 2)


