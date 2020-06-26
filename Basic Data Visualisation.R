dv <- data("mtcars")
str(dv)
str(mtcars)


# Bar Chart
counts <- table(mtcars$gear)
barplot(counts)

#horizontal bar chart 
barplot(counts, horiz=TRUE)


counts <- table(mtcars$gear) 
barplot(counts, main="Simple Bar Plot", 
        xlab="Improvement", 
        ylab="Frequency", 
        legend=rownames(counts), 
        col=c("red", "yellow", "green") )


counts <- table(mtcars$vs, mtcars$gear) 
barplot(counts, main="Car Distribution by Gears and VS", 
        xlab="Number of Gears", 
        col=c("grey","cornflowerblue"), 
        legend = rownames(counts))


counts <- table(mtcars$vs, mtcars$gear) 
barplot(counts, main="Car Distribution by Gears and VS", 
        xlab="Number of Gears", 
        col=c("grey","cornflowerblue"), 
        legend = rownames(counts), 
        beside=TRUE)

# Pie Chart

slices <- c(10, 12,4, 16, 8) 
pct <- round(slices/sum(slices)*100) 
lbls <- paste(c("US", "UK", "Australia", "Germany", "France"), " ", pct, "%", sep="") 
pie(slices, labels=lbls, col=rainbow(5),main="Pie Chart with Percentages")


library(plotrix) 
slices <- c(10, 12,4, 16, 8) 
lbls <- paste( c("US", "UK", "Australia", "Germany", "France"), " ", pct, "%", sep="") 
pie3D(slices, labels=lbls,explode=0.0, main="3D Pie Chart")


# Histogram

#miles per gallon data
mtcars$mpg 
 
hist(mtcars$mpg)

# Colored Histogram with Different Number of Bins 
hist(mtcars$mpg, breaks=8, col='darkgreen')


# Kernel Density Plots
# kernel Density Plot 
density_data <- density(mtcars$mpg) 
plot(density_data)


# Filling density Plot with color 
density_data <-density(mtcars$mpg) 
plot(density_data, main="Kernel Density of Miles Per Gallon") 
polygon(density_data, col="skyblue", border="black")


# Line Chart
weight <- c(2.5, 2.8, 3.2, 4.8, 5.1, 5.9, 6.8, 7.1, 7.8,8.1) 
months <- c(0,1,2,3,4,5,6,7,8,9) 
plot(months, weight, type = "b", main="Baby Weight Chart")


# Box Plot
vec <- c(3, 2, 5, 6, 4, 8, 1, 2, 3, 2, 4) 
summary(vec) 
boxplot(vec, varwidth = TRUE)


# Heatmap
# Data Set Sample-Sales-Data
library(dplyr)
getwd("E:\\Others\\R-Programming\\Practise\\DATA")
dt <- read.csv(file.choose(),header = TRUE)
head(dt)
str(dt)
dt$Value <- as.integer(dt$Value)
str(dt)

dt$Value <- as.numeric(dt$Value)
dt$Year <- as.numeric(dt$Year)
str(dt)

hm <- select(dt,Value,Year)
head(hm)


hm <- data.matrix(hm[-1,])
head(hm)


heatmap(hm,Rowv=NA, Colv=NA, col = heat.colors(256), scale="column")


# Word Cloud
install.packages("wordcloud") 
library("wordcloud") 

wc <- select(dt,Sales_Rep_Name,Value)
head(wc)
wordcloud(words = wc$Sales_Rep_Name, freq = wc$Value, min.freq = 2, max.words=100, random.order=FALSE)


