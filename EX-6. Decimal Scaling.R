age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)

value_to_normalize <- 35

min_age <- min(age)
max_age <- max(age)
min_max_normalized <- (value_to_normalize - min_age) / (max_age - min_age)

age_mean <- mean(age)
age_sd <- 12.94
z_score_normalized <- (value_to_normalize - age_mean) / age_sd

max_abs_age <- max(abs(age))
j <- nchar(as.character(max_abs_age))
decimal_scaling_normalized <- value_to_normalize / (10^j)

cat("Min-Max Normalized value:", min_max_normalized, "\n")
cat("Z-Score Normalized value:", z_score_normalized, "\n")
cat("Decimal Scaling Normalized value:", decimal_scaling_normalized, "\n")
