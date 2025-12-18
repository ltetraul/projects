# Step 1: Load Data
library(readxl)
nba <- read_excel("IU/IUPUI/SPRING 2024/I421 Data Mining/Final/nba.xlsx")
View(nba)

# Step 2: Scatter Plot
X2 <- nba$salary
Y <- nba$rating

# Define axis limits based on the range of data
x_limits <- range(X2)
y_limits <- range(Y)

# Increase axis limits by 10% for better visualization
x_range <- diff(x_limits) * 0.1
y_range <- diff(y_limits) * 0.1

# Create the plot with adjusted axis limits and breaks
plot(X2, Y, xlab = "Salary", ylab = "Rating", xlim = c(x_limits[1] - x_range, x_limits[2] + x_range), ylim = c(y_limits[1] - y_range, y_limits[2] + y_range))
abline(lm(Y ~ X2), col = "red")  # Add regression line to the plot

# Customize axis labels with formatted numbers
axis(1, at = pretty(X2), labels = format(pretty(X2), scientific = FALSE))
axis(2, at = pretty(Y), labels = format(pretty(Y), scientific = FALSE))

# Add grid lines
grid()

# Add a title
title("Scatter Plot of Salary and Rating")

# Add a legend for the regression line
legend("topleft", legend = "Regression Line", col = "red", lty = 1)

# Step 3: Pearson Correlation Coefficient
correlation <- cor(X2, Y)
cat("Pearson Correlation Coefficient:", correlation, "\n")

# Step 4: Coefficient of Determination
r_squared <- correlation^2
cat("Coefficient of Determination (R-squared):", r_squared, "\n")

# Step 5: Linear Regression Model
model3 <- lm(formula = Y ~ X2)
cat("Linear Regression Model Summary:\n")
summary(model3)