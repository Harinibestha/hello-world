# use # for writing a comment
# shift + Command/ctrl + C to comment and decomment
# hit Command/ctrl + Enter to run a line/selected command

print("Hello World")

# getting help in R
?print

# ooutput 1
3
#or
print(3)

#output 2
3+2
3*2
3/2

# or use sum function
sum(1,2,3,4,5)
sum(1:5)
sum(1:1000)

#Operators in R
#+x
# -X
#x+Y
# x-y
#x/y
#x^y
#x %% y - x mod y
#x%%y - integer division
#x*y

10 %% 0.6
10 %/% 0.6

# other mathematical functions in R - sqrt, exp, log
# statistical functions in R - Meam, min, max, N, sd, quantile, percentile

# can do arithmetic operations
pi
sqrt(36)
2^2+5

log(1000)
log(1000,base = 10)

mean(1:5) 
mean(1,2,3,4,3,2,1)

#use Combine opeartor to use as a vector
mean(c(1,2,3,4,3,2,1))

#or

x=c(1,2,3,4,3,2,1)
mean(x)

?c #This is a generic function which combines its arguments.

#,- is used as assignment operator in R
# assign a value of 5 to an object p
p<-5

#other forms of assignment operator
foo=6
fun<-6

# simple arithmetic operations
q<-p+5

#overwriting  values of object
p<-6
#overwriting can change data types as well of the objectx
x<-5
x<-"Jigsaw"
typeof(x) #typeof determines the (R internal) type or storage mode of any object

#checking the class of the object 
class(x)

v<-c(1,2,3,4)
class(v)

v<-c("1","2","3","4")
class(v)

#deleting/removing an object from working environment
rm(x)
rm(foo,fun)

ls()
rm(list = ls())
data() #will give the datasets present in R environment

?iris
#vector is single line of numbers or strings ot logical data
#it contains only one type of class
#

x<-5 #it is a numeric vector of 1 element
x<-c('1','2','3','7')
class(x)
a<-3
a1<-c(a,a*4,-7*a)

#NA VS NULL
#NULL means no value
#NA means missing value

A<-c(1,2,3,NA,4,4,2,NA)
A
class(A)
length(A)

A<-c(1,2,3,NULL)
A
class(A)
length(A)

# checking missing value/it displays logical values
is.na(A)

#count of missing
sum(is.na(A))

#logical vector
sp<-c(TRUE,FALSE,TRUE)
class(sp)

# Arithmetic operators on vectors
a1<-c(1,1,1)
a2<-c(2,2,2)
a1+a2

#Vectors shouldnt have mixed type of data
#note hierarchy of data types - char > Numeric > logical
p<-c(1,2,"g")
class(p)
p<-c(TRUE,FALSE,"G")
p<-c(TRUE,FALSE,3)
class(c(TRUE,FALSE,1))


x<-c(1,2,3,4)
class(x)
x1<-c(c,2.4,3.5,4.5)
class(x1)

#searching with referencing within vectors
num<-c("a","b","c","d","e")
num
num[1]
num[4]
num[-1] #it will give data with missing value mentioned
num[1:2]
num[-2]
num[2:3]
num

#assigning names
names(num)<-c("x1","x2","x3","x4","x5")
names(num)[4]
num["x4"]
num[c("x1","x2")]
num["x1","x2"]

#sequence
sequence <-seq(100,200)
sequence_by <-seq(from =10, to =20, by = 0.5)

#Repeat
repeat1<-rep (1,5)

#repeat a seq n times
rep(1:5,2)

#repeat each number in seq n times
rep(1:5, each = 2)

#get seq 1,1,1.5,1.5,2,2
rep(c(1,1.5,2), each=2)
rep(seq(from =1, to =2, by = 0.5), each=2)
#or
rep(seq(1,2, by = 0.5), each=2)
rep(seq(1,2, by = 0.5), 2)


#Matrix - A single data table with values of same data type

b<- matrix(c(1,2,3,1,5,7),
           nrow = 3,
           ncol = 2)
b
b[,2]
b[2,]
b[2,2]
b[1,2]
b[1,1]


#dataframes
#each column can be a different data types
#consider the following vectors:

product=c("Bag","Shoes","belt","belt")
total_price=c(500,1000,150,10000)
color=c("Blue","red","red","blue")
quantity=c(5,2,3,4)

#create a dataframe
product_details <- data.frame(product,total_price,color,quantity)

# R by default read the charater variable as a factor
#factor will have limited set of values (like Gender)

product_details <- data.frame(product,total_price,color,quantity, stringsAsFactors = FALSE)

#as .factor: will change the type as factor

#view command 
View(product_details)

#to get idea about the variables and datatypes in a dataframe
#what are factor variables v/s character variables?
str(product_details)

#selecgting data out of a data frame/traversing through the data
product_details[,2]
product_details[,"total_price"]
product_details["product","quantity"]
product_details[,4]
product_details[1,4]
product_details[2,]

#head & tail to get to see how the data is by default it will give 6 records
head(product_details,2)
tail(product_details,2)

#Lits: Recursive vectors. can handle diff data types or various size
my.list <- list(name = c("Robert", "Emma"), age = c(65,54,43), retirement = c(TRUE,FALSE))

#note the $sign against each variable to distinguish the output as list
my.list

#to get a variable out of the list - 2ways
my.list$age
my.list["age"]

#check list class. Note teh difference
class(my.list$age)
class(my.list["age"])

#getting 2nd entity inside variable age of my.list. This is double referencing
my.list[["age"]][2]

#Double square brackets are a must when we do double refencing
my.list[[3]]
my.list[[3]][2]
my.list

#exploring datasets
#library(datasets)
data()

#getting list of variables
names(iris)
colnames(iris)

iris1<- iris
#getting number of recors,column count
dim(iris)
nrow(iris)
ncol(iris)

#to get a glimpse of data by seeing top and bottom few records
head(iris)
head(iris,10)

tail(iris)
tail(iris,10)


#looking at the structure of the data
str(iris)


iris1$Species <- as.character((iris1$Species))
iris1
str(iris1)

#summary of a datasset
summary(iris1)

is.character(Species)
is.numeric(Petal.Length)
is.factor(Species)




##importing tabular data
#checks needed to ensure that data is imported correctly
#1.Delimeter in the file
#2.How missing values are populated in the data

setwd("path") #give double slash here
getwd()
import <-read.table("path",sep=",",header = TRUE)
import

summary(import) #Focus on the missing values
str(import) #are column data types correct
class(import)


import1 <-read.table("path.csv",sep="\t",header = TRUE)


#na.strings - to read missing and blank spaces as NA
import1 <-read.table("path.csv",sep="\t",header = TRUE,na.strings = c(NA,"Missing",""))
#read.csv for csv files no need to use seperator

## Reading excel files
install.packages("readxl")
library(readxl)