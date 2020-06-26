
library(dplyr)
install.packages("vctrs")
install.packages("tidyr")
library(dplyr)

data("iris")
head(iris)
lapply(iris$Sepal.Length, mean)

sapply(iris$Sepal.Length, mean)


# Dplyr Packages

#To select columns by name
select(iris, Sepal.Length, Sepal.Width)

#To select a range of columns by name
select(iris,Sepal.Length:Petal.Width)

#To select columns and rows with string match
select(iris, starts_with("Petal"))
select(iris, ends_with("Width"))
select(iris, contains("tal"))
select(iris,matches(".t."))


#Functions of Dplyr Package-Filter()
filter(iris, Sepal.Length >6)
filter(iris, Sepal.Length == 5.8)
filter(iris,Sepal.Length >6 & Sepal.Width<3)
mean(subset(iris,Sepal.Length >6 & Sepal.Width <3)$Petal.Width)
# Subset Function




