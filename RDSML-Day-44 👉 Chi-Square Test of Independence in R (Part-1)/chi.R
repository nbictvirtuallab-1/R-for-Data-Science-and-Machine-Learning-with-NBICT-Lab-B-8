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





