  # Importing the dataset

housetasks <- read.delim("housetasks.txt" , row.names = 1)

# Contingency table can be visualized using the function
# balloon plot . This function draws a graphical matrix,
# where each cell contains a dot, whose size reflects
# the relative magnitude of the  corresponding component

# installing packages

install.packages("gplots")

library(gplots)

# converting dataset into matrix, then into taable .
# text based database ke matrix 1st e convert korbo,then table e

dt <- as.table(as.matrix(housetasks))

# plotting 

balloonplot(t(dt), main = "Housetasks Visualization" ,
            label = F , show.margins = F , 
            xlab = "" , ylab = "")

# It's also possible to visualize a contingency table
# as a mosaic plot . This can be done using the function mosaicplot
# from the built in R package graphics .

library(graphics)
# Plotting using mosaicplot 
# las for axis label style
mosaicplot(dt , shade = T , las = 2 ,
           main = "Housetasks")

# Blue color indicates that the observed value is higher
#than the expected value .
# Red color indicates that the observed value is  lower 
#than the expected value .

# Computing chi square test in R
# (row no - 1) * (col no - 1) = (13-1) * (4-1) = 36
chisq <- chisq.test(housetasks)

# Observed counts
chisq$observed

# expected counts
# decimal er por 2 ghor nite round ,tarpor 2

round(chisq$expected , 2)
 # expected ccount = (row total* column total) / grand total

#Residuals calculation

chisq$observed - round(chisq$expected , 2)

# Standardized(pearson) Residuals calculation

round(chisq$expected , 3)

# Adjusted standardized residuals calculation

chisq$stdres

# Visualize Pearson residuals using the package corrplot 

install.packages("corrplot")

library(corrplot)

corrplot(chisq$residuals , is.corr = FALSE)

# coefficient er value gulo  -1 theke +1 hole is.corr = TRUE

# Contribution in percentage

contrib <- 100 * (chisq$residuals)^2 / chisq$statistic

round(contrib, 3)

# Visualize the contribution

corrplot(contrib, is.corr = FALSE)

# [From the image above, it can be seen that the most contributing cells to the Chi-square are Wife/Laundry (7.74%), Wife/Main_meal (4.98%), Husband/Repairs (21.9%), Jointly/Holidays (12.44%).

#These cells contribute about 47.06% to the total Chi-square score and thus account for most of the difference between expected and observed values.

#This confirms the earlier visual interpretation of the data. As stated earlier, visual interpretation may be complex when the contingency table is very large. In this case, the contribution of one cell to the total Chi-square score becomes a useful way of establishing the nature of dependency.]

