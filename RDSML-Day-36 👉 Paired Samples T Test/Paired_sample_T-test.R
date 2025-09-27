# Paired sample T test in R

#Importing the dataset
my_dataset = read.csv("paired-samples-t-test.csv")

# Calculating the difference 

difference = my_dataset$carb - my_dataset$carb_protein

# Checking if the differences are normally distributed

shapiro.test(difference)

# Checking for outlirs using boxplot
installed.packages("ggplot")
library(ggplot2)

boxplot(difference)

# Running the paired T test

t.test(x = my_dataset$carb, 
       y = my_dataset$carb_protein,
       paired = TRUE)

# Running the wilcoxon signed-rank test
 
wilcox.test(x = my_dataset$carb, 
            y = my_dataset$carb_protein,
            paired = TRUE)

# Calculating mean and sd

mean(my_dataset$carb)
sd(my_dataset$carb)
mean(my_dataset$carb_protein)
sd(my_dataset$carb_protein)

# Effect size calculation using cohen's d 

# 0.2 - small, 0.5 - medium, 0.8 - large 

install.packages("effsize")
library(effsize)

cohen.d(my_dataset$carb_protein, my_dataset$carb, paired = TRUE)

# A paired sample T test is used to determine whether there was a statistically significant mean difference between the distance ran when participants imbibed a carbohydrate-protein drink compared to carbohydrate-only drink. No Outliers were detected
#the assumption of normality was now violated, as assesed by Shapiro wilk's test
# (p = 0.780), participants ran further when imbibing the carbohydrate- protein drink
#(Mean  11.302 km, SD = 0.713 km) as opposed to the carbohydrate-only drink
#(Mean =11.167 km, SD= 0.726), 
# A statistically significant mean increase of 0.135 km , 
#95% CI 

