# Install and load the required package to access the "water" dataset
install.packages("HSAUR") # Install only if not already installed
library(HSAUR)
# Load the dataset
data("water")
# View the structure of the dataset
str(water)
# Scatter plot to check the linear relationship
plot(water$hardness, water$mortality, col = "blue", pch = 16, xlab = "Hardness", ylab = "Mortality", main = "Scatter Plot of Mortality vs Hardness")
# Fit a linear regression model
model <- lm(mortality ~ hardness, data = water)
# Add regression line to the plot
abline(model, col = "red", lwd = 2)
# Predict mortality for hardness = 88
new_data <- data.frame(hardness = 88)
predicted_mortality <- predict(model, new_data)
print(paste("Predicted Mortality for Hardness 88:", round(predicted_mortality, 2)))
