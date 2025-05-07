#Data types in R
#1.Numeric- Integer / Floating Point
#2.String/Character- "refayet karim"/ 'Refayet karim'
#3.Logical

a = 11
b = 7.19
class(a)
class(b)

name = "Refayet Karim"
print(name)
class(name)

c = "52"
print(c + 9)
print( a + 9)
class(c)

# Logical Data Type - TRUE / FALSE (T,F)
a > b
class(a < b)
print(a < b)

x = 19
y = 22-3
print(x == y)
print(x != y)
print( y > x)
print(y >= x)
#Logical Operators in R
# && logical operator
# || logical operator
4 == 4 && 5 ==5
x != y || x == y
# Simple Mathematical Operators in R
z = 6 + 9 - 8 * 2 / 3
print(z)
w = (4 + 3 - 3) * 2 / 3
print(w)

y = 4^3
print(y)
11 / 5
11 %% 5
11%/%5




