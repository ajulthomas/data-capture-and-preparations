# Introduction to Data Capture and Preparations

# Week 2 Tutorial - 6B14 - 14-02-2024

# clear environment
rm(list=ls())

# clear console
cat("\014")

# Excercise 1

8+23


(11*2)/(6/3)

sqrt(121)

sum(1:5)

print("hello world")

1:5

# shortcut for <- : Alt + -
x <- 7 + 5

y <- 16

x <= 5

y == 16

x != 7

x >= 5




##############################################################################
# Excercise 2
# ----------------------------------------------------------------------------

my_variable <- 3 
my_variable^2
5 -> a

b <- 4

y <- c(a,b)

k <- c(.5, 1)

k <- c(k, 1.5)

k <- c(k, c(2, 2.5))

k <- c(k, k)

x <- c(2,8,3)

y <- c(6,4,1)

x+y

x>y


##############################################################################
# Excercise 3
# ----------------------------------------------------------------------------


name <-  readline(prompt = "Input your name: \n")
age <- readline(prompt="Input your age: \n")

class(age)
age <- as.numeric(age)
class(age)

print(paste("My name is",name, "and I am",age ,"years old."))
print(R.version.string)


##############################################################################
# Excercise 4
# ----------------------------------------------------------------------------

my_variable <- 3
my_variable^2

5 -> a
b <- 4

y <- c(a,b)
k <- c(.5, 1)

k <- c(k, 1.5)
k <- c(k, c(2, 2.5))

k <- c(k, k)
x <- c(2,8,3)
y <- c(6,4,1)

x+y
x>y
