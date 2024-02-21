
# **********************************************************************
#
# Data Capture and preparations - Week 3 Tutorial
# 
# ajul.thomas
# 
# **********************************************************************



# Topics covered

# Getting Help
# Data Structures
# Obtaining specific information from data frames
# Conditionals
# Loops


# remove environment variables
rm(list = ls())

# clear the console
cat("\014") 




# Excercise 1

help.start()
help(plot)
?plot
?apropos
apropos("plot")
example(plot)


# Excercise 2

# vectors

int_vec <- c(1L, 2L, 3L, 4L)
num_vec <- c(2, 3, 4.5, 7, 8)

typeof(int_vec)
typeof(num_vec)

length(int_vec)
length(num_vec)

coe_var <- c(1.2, 2L, 5, "8", "d")
typeof(coe_var)

animals <- c("mouse", "rat", "dog", "bear")
x <-seq(0, 10, 2)

y <- 1:10
typeof(y)

# Elements of a vector can be accessed using vector indexing. The vector used for indexing can be
# logical, integer or character vector. Note: Vector index in R starts from 1, unlike most programming
# languages where index start from 0.

x[3]
x[c(2,4)]

# access all elements excluding the ones mentioned
x[-1]

x[c(-1, -2)]

x[-c(1, 2)]


# cannot mix positive and negative
x[c(-1, 2)]  # error

# real numbers are trancated to integers
x[c(2.4, 3.7)] # is same as x[c(2,3)]


# named vectors
named_vecs <- c("first"=1, "second"=2, "third"=3)

print(named_vecs)

names(named_vecs)

named_vecs

named_vecs[c(T,T,F)]

names_vecs["first"]

named_vecs[c("second", "third")]


# Excercise 3

name <-  c("Kevin", "Peter", "John", "Riley", "Susan")
age <-  c(13, 19, 24, 20, 29)
gender <-  c('M', 'M', 'M', 'M', 'F')

df <- data.frame("Name"=name, "Age"=age, "Gender"=gender)

# structure of data frame
str(df)

# first 2 rows of df
head(df, 2)

# view df as a table
View(df)

# accessing values from a dataframe

# accessing data in column 1
df[[1]]
df$Name

# access data in column 2, returns data as a data frame 
df[2]

max(df$Age)
min(df$Age)
sum(df$Age)
mean(df$Age)

# returns list of booleans
age_greater_than_20 <- df$Age > 20

# return no. of records for which age is greater than 15
sum(df$Age > 20)

# return the index of the element for which the condition is true
which(df$Age == 29)

# access two columsn simultaneously
df[c("Age", "Name")]
df[c(2,3)]

# returns the name of each row/column
rownames(df)
colnames(df)

# add more column to the df
df$City <- c("Canberra", "Melbourne", "Perth", "Sydney", "Brisbane")

# add more rows
df <- rbind(df, c("Kenneth", 25, "M", "Gold Coast"))

# delete a City
df$City <- NULL

# remove first row
df <- df[-1, ]



# ------------
# Exercise 4
# -----------

# clear console
cat("\014")

# clear environments
rm(list=ls())


# list available datasets
data()

# select mtcars dataframe
data("mtcars")

head(mtcars, 5)

str(mtcars)

# dimensions of the dataframe
dim(mtcars)

nrow(mtcars)

ncols(mtcars)

# accessing value from mtcars
# value in first row, second column of mtcars
mtcars[1,2]

first_row_name <- rownames(mtcars)[1]
second_column_name <- colnames(mtcars)[2]

mtcars[first_row_name, second_column_name]

# histogram of mpg col
hist(mtcars$mpg, main = "Histogram of mpg(miles per gallon)", xlab = "mpg(miles per gallon)")

# histogram with 20 breaks
hist(mtcars$mpg, breaks=20,  main = "Histogram of mpg(miles per gallon)", xlab = "mpg(miles per gallon)")

# boxplot of mpg
boxplot(mtcars$mpg,  )

# boxplot of mpg vs cylinders
boxplot(mtcars$mpg, mtcars$cyl)

# scatter plot of mpg
plot(mtcars$mpg)

# scatterplot of hp vs mpg
plot(mtcars$hp ~ mtcars$mpg)

?mtcars

# count of manual and automatic cars
count_manual_cars <- sum(mtcars$am == 1)
count_automatic_cars <- sum(mtcars$am == 0)

if(count_automatic_cars > count_manual_cars) {
  print(paste("Automatic cars: ", count_automatic_cars))
} else {
  print(paste("Manual Cars: ", count_manual_cars))
}

# scatterplot of weight vs hp
plot(mtcars$wt ~ mtcars$hp)


# ------------
# Exercise 5
#-------------

team_a <-  3
team_b <- 5
if(team_a > team_b) {
  print("Team A wins")
} else {
  print("Team B wins")
}

# ------------
# Exercise 6
#-------------

# print the square of the numbers in the vector

nums_vec <- c(1, 2, 3, 4, 5, 6)

for(num in nums_vec) {
  print(paste(num, "^ 2 =", num^2))
}

# iterate over all the elements of a vector and print each value.

fruits_vec <- c("Apple", "Orange", "Passion Fruit", "Banana")
for(fruit in fruits_vec) {
  print(fruit)
}

# count the number of elements in the vector

nums_vec <- c(2,5,3,9,8,11,6)

count <- 0

for(i in nums_vec) {
  count <- count + 1
}

print(count)


# ------------
# Exercise 7
#-------------

? rep
? seq

my_list <- list( seq(15,25, length.out = 5), c("Kevin","Peter", "Rohan", "Hung", "Tran"), rep(0:1, 5)  )

print(my_list)

assign("names", my_list[[2]])
print(names)

variable_names = c("age", "name", "gender")

i <- 0
for(i in 1:length(my_list)) {
  assign(variable_names[i], my_list[[i]])
}

print(age)
print(names)
print(gender)
