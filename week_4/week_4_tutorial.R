# clean the environment
rm(list = ls())

# clear console
cat('\014')


# Excercise 1

quantity <- 31

if(quantity > 30) {
  print("What a great day!")
} else if(quantity >= 20) {
  print("Average day")
} else {
  print("Not enough for today")
}

# Excercise 2

category <- c('A', 'B', 'C', 'D')
price <- 30

calculate_VAT <- function(category, price) {
  rate <- 0
  # if(category == 'A') {
  #   rate <- 8
  # } else if(category == 'B') {
  #   rate <- 10
  # } else  {
  #   rate <- 20
  # }
  switch (category,
    'A' = rate <- 8,
    'B' = rate <- 10,
    'C' = rate <- 20,
    "Otherwise" = "NA"
  )
  print(paste("A VAT rate of",rate,"% is applied.", "The total price is", price*(1 + rate/100) ))
}

for (catg in category) {
  calculate_VAT(catg, price)
}



? cat
? ifelse
? switch (object,
  case = action
)

# How install, load, update and list packages

# install package gclus
install.packages("gclus")

# load packages
library(gclus)

# update package
update.packages("ggplot2")

# list installed packages
installed.packages()

# only show package names
pkgs <- installed.packages()
packages <- pkgs[,1]


remove.packages("gclus")

# to check if the particular item is in object
is.element("ggplot2",packages)


# full list of available packages
p <- available.packages()
dim(p)


df <- read.table("./tab.txt", sep = "\t", header=T, row.names = 1)
head(df, 10)

nrow(df)
ncol(df)

is.data.frame(df)

names(df)
row.names(df)


# Excercise 4
# write to file

path <- getwd()
path

write.table(
  x=print("This is the first line.\nThis is the second line.\nThis is the third line.\n"),
  file=paste0(path,"/automated_printing.txt"),
  row.names = FALSE,
  col.names = FALSE,
  quote = T
)


?paste0


# readlines
# read data from file

? read.csv

# clear console
cat('\014')

# clear environment
rm(list=ls())

employee.sales <- read.csv("./employee_sales.csv", header = T)

head(employee.sales, 5)

is.data.frame(employee.sales)


dim(employee.sales)


# maximum salary in yearly income
max.salary <- max(employee.sales$YearlyIncome)

# minimum salary
min.salary <- min(employee.sales$YearlyIncome)

# median sales
sales.median <- median(employee.sales$Sales)

# mean sales
sales.mean <- mean(employee.sales$Sales)

hist(employee.sales$Sales)
boxplot(employee.sales$Sales)

# subset of employee with Bachelor's education
employee.sales.bachelors.degree <- subset(employee.sales, Education=="Bachelors")

data <- subset(employee.sales, Education == "Bachelors" & YearlyIncome > 70000)
print(data)

highest_sales <- subset(employee.sales, Sales == max(employee.sales$Sales))
lowest_sales <- subset(employee.sales, Sales == min(employee.sales$Sales))

paste("highest sale :", highest_sales$FirstName, highest_sales$LastName)
paste("lowest sale :", lowest_sales$FirstName, lowest_sales$LastName)



# plotting data


# clear console
cat('\014')

# clear environment
rm(list=ls())


df <- read.table("./tab.txt", sep = "\t", header = T, row.names = 1)
head(df)

dim(df)

x <- 1:length(df$t1)
y1 <- df$t1
y2 <- df$t2

plot(x,y1, xlab = "Time", ylab = "Value", type = "l", col="red")
lines(x, y2, col="blue")

? plot
