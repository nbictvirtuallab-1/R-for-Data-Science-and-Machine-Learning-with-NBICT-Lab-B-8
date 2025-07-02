#importing the data set

tooth_data = ToothGrowth

#creating a function for summerizing the data
#based on the grouping variables


# funtion er vitore library dile hobe na, require dite hobe
data_summary = function(data, varname, groupnames){
  require(plyr)
  
  summary_func = function(x, col){
    c(mean = mean(x[[col]]), sd = sd(x[[col]]))
  }
  
  all_summary = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(all_summary, c("mean" = varname))
  return(data_sum)
}

d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))


