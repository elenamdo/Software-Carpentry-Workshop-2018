print("WOW")
#Building blocks of R

#Variable/objects
#operator <- 

name <- "Jane"
name
print(name)
price <- 3.99
price

#list of objects
ls()

#remove objects
rm(price)
#removal all objects
rm(list=ls())

#Functions
mass <- 64
mass
sqrt(mass) #function with the variable as an argument
res <- sqrt(mass)
res
#getwd()function
getwd()

#using the help tab
?plot
help("mean")

#****chanllenge 2.1****
mass <- 47.5
age <- 122
mass <- 47.5
mass*2.3
age-20
height+20
height <- 150
height+20

#additional packages
install.packages("knitr")
library(knitr)

####Data typles and structures

#Single-element data structures: smallest units in R
age <- 45
#useful functions to know more about the object
length(age)
str(age)

score <- 79
is.integer(score)
typeof.score(score)
typeof(score)
#example of nested function
typeof(is.integer(score))
####Challenge 2.2####
#find the output of
is.logical(is.numeric(typeof(is.integer(score))))
step1 <- is.integer(score)
step1
step2 <- typeof(step1)
step2
step3 <- is.numeric(step2)
step3
step4 <- is.logical(step3)
step4
#Data structure with multiple elements
#vector: collection of elements of the same data type
#how to create a vector?
#c():concatenate function
v <- c(1,2,3,45)
v <- c(1:3, 45)
v
v <- c("n":"z")
v <- c(1:3,45)

#examine the object
length(v)
str(v)

#view parts of data/vector
head(v, n=2)
tail(v, n=2)

#manipulate
v1 <- 2*v
v1

#add a vector
#let's create v2 and then add v2 to v1
v2 <- c(1:5)
v3 <- v1+v2
v3
#character vector
v4 <- c("Jane", "John", "Farah")
v4
typeof(v4)
#change data type
v3 <- as.character(v3)
v3
typeof(v3)
str(v3)
#Matrices, factors, list*** challenge
#Matrices: 2D vectors
#to create matrices we use the matrix function
m <- matrix(c(1:18),3, 6)
m
dim(m)
dim(m(1,3))
#factor
#special vectors used to represent categorical data
#to create a factor we use a factor function
continent <- factor(c("Asia", "America", "Europe"))
continent
str(continent)
#lists: generic vectors-collection of elements with different data types
#numerical and character
l <- list("Afghanistan","Albania",1952, 876897)
l
typeof(l)
str(l)
####Challenge2.2#####
menuitems <- c("chicken","soup", "salad", "tea")
categories <- factor(c("liquid", "solid"))
cost <- c(4.99, 2.99, 3.29, 1.89)                     
myorder <- list(menuitems, categories, cost)
myorder
categories <- factor(c("solid", "liquid", "solid", "liquid"))
myorder
myorder

#Data frame
myorder <- list(items, types, cost)
myorder_df <- data.frame(menuitems, categories, cost)
myorder_df

menuItems <- c("chicken", "soup", "salad", "tea")
menuType <- factor(c("solid", "liquid", "solid", "liquid"))
menuCost <- c(4.99, 2.99, 3.29, 1.89)
myOrder_df <- data.frame(menuItems, menuType, menuCost)
myOrder_df

## SUBSETTING
## Type 1: Positional Index:

v <- c(1:10)
v[2]
v[c(3:6)]
v[-c(3:6)]

myOrder_df[1] #the number one extracts the 1st item in the data frame list
#and shows its content, preserves data type
myOrder_df[[1]] #subsetting the values as a vector
typeof(myOrder_df[1])
typeof(myOrder_df[[1]])
str(myOrder_df[[1]])

##data frame[row, column]
myOrder_df[1:3,]

##Subsetting by Name
myOrder_df$menuItems

##Subsetting by logical vectors:

####
# > --greater than
# < --less than
# == -- equal to
# >= -- greater than or equal to
# <= -- less than or equal to 

v <- c(5,1,3,4,5)
v[v==5]
v==5

df1 <- myOrder_df[myOrder_df$menuType=="solid",]
df1
myOrder_df$menuType=="solid"
df2 <- myOrder_df[myOrder_df$menuCost>=3,]
df2

df3 <- myOrder_df[myOrder_df$menuType=="solid"]
df3
myOrder_df$menuType=="solid"

##GapMinder Dataset
myData <- read.table("Data/gapminder.txt")


##For csv files use read.csv()
str(myData)
typeof(myData$V1)
myData[,c(3,5)]

unique(myData$V1)

myDataFull(myDataFull$country==Sweden,)
