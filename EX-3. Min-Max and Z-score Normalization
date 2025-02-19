# Given data
data_values <- c(200, 300, 400, 600, 1000)

# (a) Min-Max Normalization (scaling to [0,1])
min_val <- min(data_values)
max_val <- max(data_values)

min_max_normalized <- (data_values - min_val) / (max_val - min_val)

# (b) Z-Score Normalization
mean_val <- mean(data_values)  # Compute mean
std_dev <- sd(data_values)     # Compute standard deviation

z_score_normalized <- (data_values - mean_val) / std_dev

# Print results
cat("Original Data: ", data_values, "\n")
cat("Min-Max Normalized: ", min_max_normalized, "\n")
cat("Z-Score Normalized: ", z_score_normalized, "\n")

