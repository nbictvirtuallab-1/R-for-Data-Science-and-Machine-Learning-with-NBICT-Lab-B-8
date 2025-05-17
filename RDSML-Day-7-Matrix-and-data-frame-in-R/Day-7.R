#Matrix in R
#2 dimensional data structure
#row and column

study_hours = c(89, 69, 45, 75, 63, 54, 23, 25, 57, 46)
subject_marks = c(79, 53, 71, 57, 63, 54, 74, 77, 61, 69)

#creating a matrix just using study_hours
#naming a variable
stu_hours_mat = matrix(study_hours)
stu_hours_mat
study_hours

#joining two columns in a matrix

student_data = c(study_hours , subject_marks)
student_matrix = matrix(student_data)
student_matrix

#splitting columns procedure
student_matrix = matrix(student_data , byrow = FALSE , nrow = 10)
student_matrix
#byrow = FALSE (default TRUE,row under row)
#FALSE = 2 columns by side
#byrow = FALSE means bycolumn = TRUE
#we should not use bycolumn in R

#naming rows and columns

colnames(student_matrix) = c("Hours" , "Marks")
student_matrix

row.names(student_matrix) = c(1:10)
#1:10 means 1 to 10
student_matrix

#selecting an element from matrix
# 1st row 4,2nd column 1
student_matrix[4, 1]
student_matrix [6, 2]
summary(student_matrix)

#Data frames in R

student_names = c("Mr1", "Ms2", "Ms3", "Mr4", "Ms5")
study_hours = c(20, 24, 46, 62, 22)

marks = c(40, 55, 69, 54, 45)
Gender = c("Male", "Female", "Female","MAle", "Female")
male = c(TRUE, FALSE,FALSE, TRUE, FALSE)

stu_data = data.frame(student_names,study_hours,marks,male)
summary(stu_data)

mean(stu_data$study_hours)
