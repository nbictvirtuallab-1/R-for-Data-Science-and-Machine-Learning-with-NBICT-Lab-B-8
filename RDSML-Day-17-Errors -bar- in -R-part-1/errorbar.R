#importing the data set

tooth_data = ToothGrowth

#creating a function for summerizing the data
#based on the grouping variables

sum = function() {
  adding values and returning the result
}

sum(23,225, 28)

add_values = function(a,b) {
  result = a+b
  return(result)
}
add_values(20,76)

# funtion er vitore library dile hobe na, require dite hobe
data_summary = function(data, varname, groupnames){
  require(plyr)
  summary_func = function(x, col){
    c(mean = mean(x[[col]], na.rm = TRUE), sd = sd(x[[col]], na.rm = TRUE))
  }
  data_sum = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(data_sum, c("mean" = varname))
  return(data_sum)
}
d_summary = data_summary(tooth_data, varname = "len", groupnames = c ("supp", "dose"))
