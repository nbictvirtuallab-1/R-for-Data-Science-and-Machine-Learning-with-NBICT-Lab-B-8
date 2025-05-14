#vectors in R

#creating a vector using c() command
student.height = c(60, 69, 55, 62)
student.height

#checking the class of the vector student.height
is.numeric(student.height)
is.logical(student.height)

#R automatically converts mumeric to text,
#when you have a text item in the vector
b = c(5, 8, 2, "sv")
b
is.numeric(b)
is.character(b)

#we can convert data types
#for example from numeric to character

a <- c(1, 2, 3, 4, 5)
a
class(a)
is.numeric(a)
# character overwrite
a = as.character(a)
a
class(a)
#logical operator TRUE and FALSE when converted
#to Numeric, true converts to 1 and FALSE converts to 0

d = c(TRUE, FALSE, FALSE, TRUE, FALSE)
d = as.numeric(d)
d 
#converting numeric to logical(1 or any
#number other than 0, converts to TRUE , 
#0 converts to FALSE)
d
class(d)
  
d = as.logical(d)
d
e = c(1, 0, 0, 1, 0, 23, -7, 0)
e = as.logical(e)
e
#creating sequencial vector
#creating a vector from 1 to 10
my_seq = c(1 : 100)
my_seq
#creating a sequencial vector using se() funtion
new_seq =c(seq(1,10))
new_seq
#sequence in steps of 3
new_seq = c(seq(1,10, by=3))
new_seq

#vectors can have characters
names = c("refayet","bimbo","takiya")
names[2]
names[1:2]
#assigning names to vector valus
my_values = c(4, 7, 9, 11)
names(my_values) = c("a", "b", "c", "d")
my_values
my_values["c"]
