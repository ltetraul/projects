library(caret)
library(ggplot2)

#load data
data <- read.csv("downloads/nba2Kroster.csv")

#summary
summary(data)

#seed
set.seed(123)

#rows
train_size <- floor(0.7 * nrow(data))

#training indices
train_indices <- sample(1:nrow(data), train_size)

#train
train_data <- data[train_indices, ]

#test
test_data <- data[-train_indices, ]

#position bar chart
position <- table(data$position)
barplot(position, main = "Position Distribution", xlab = "Position", ylab = "Frequency")

#rating histogram
hist(data$rating, main = "Rating Distribution", xlab = "Rating", ylab = "Frequency")

#boxplot of player ratings by position
boxplot(rating ~ position, data = data, main = "Player Rating by Position", xlab = "Position", ylab = "Rating")

#sort dataset
sorted_data <- data[order(-data$rating), ]

#top ten highest overall rating
top_ten <- head(sorted_data, 10)
print(top_ten[, c("full_name", "rating")])

#convert salary to numeric
train_data$salary <- as.numeric(gsub("[$,]", "", train_data$salary))
test_data$salary <- as.numeric(gsub("[$,]", "", test_data$salary))

#linear regression model
model <- lm(rating ~ salary, data = train_data)

#make predictions
predictions <- predict(model, newdata = test_data)

#plot actual vs predicted ratings
plot(test_data$rating, predictions, main = "Actual vs Predicted Ratings by Salary", xlab = "Actual", ylab = "Predicted")
abline(0, 1, col = "red")

#table of actual vs predicted ratings
results <- data.frame(Actual = test_data$rating, Predicted = predictions)
head(results)

#mean squared error
mse <- mean((test_data$rating - predictions)^2)
print(paste("Mean Squared Error:", mse))











