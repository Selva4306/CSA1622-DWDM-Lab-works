# Define the speed data
speed <- c(78.3, 81.8, 82, 74.2, 83.4, 84.5, 82.9, 77.5, 80.9, 70.6)

# Calculate Interquartile Range (IQR)
iqr_value <- IQR(speed)

# Calculate Standard Deviation
std_dev <- sd(speed)

# Print results
cat("Interquartile Range (IQR):", iqr_value, "\n")
cat("Standard Deviation:", std_dev, "\n")
