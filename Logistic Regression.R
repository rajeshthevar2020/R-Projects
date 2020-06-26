lr = read.csv(file.choose(),header = TRUE)
head(lr)
lr = lr[3:5]
head(lr)
str(lr)

# Encoding the target feature as factor
lr$Purchased <- as.factor(lr$Purchased)
str(lr)

# Splitting the dataset into Training set and Test set
library(caTools)
set.seed(123)
split = sample.split(lr$Purchased,SplitRatio = 0.75)

training <- subset(lr,split==TRUE)
head(training)

test <- subset(lr,split==FALSE)

# Featuring scaling [-3] to remove dependent variable
training[-3] = scale(training[-3])
test[-3] = scale(test[-3])

#training = data.frame(training)

# Fitting Logistic Regression to the Training set
classifier = glm(formula = Purchased ~ ., family = binomial, data = training)

# Predicting the Test set result
prob_pred = predict(classifier, type = 'response', newdata = test[-3])
y_pred = ifelse(prob_pred > 0.5, 1, 0)

# Making the Confusion Matrix
cm = table(test[, 3], y_pred > 0.5)
cm


