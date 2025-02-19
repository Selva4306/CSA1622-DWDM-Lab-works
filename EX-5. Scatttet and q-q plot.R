age <- c(23, 23, 27, 27, 39, 41, 47, 49, 50, 52, 54, 54, 56, 57, 58, 58, 60, 61)
fat <- c(9.5, 26.5, 7.8, 17.8, 31.4, 25.9, 27.4, 27.2, 31.2, 34.6, 42.5, 28.8, 33.4, 30.2, 34.1, 32.9, 41.2, 35.7)

age_mean <- mean(age)
age_median <- median(age)
age_sd <- sd(age)

fat_mean <- mean(fat)
fat_median <- median(fat)
fat_sd <- sd(fat)

cat("Age - Mean:", age_mean, " Median:", age_median, " Standard Deviation:", age_sd, "\n")
cat("%Fat - Mean:", fat_mean, " Median:", fat_median, " Standard Deviation:", fat_sd, "\n")

par(mfrow = c(1,2))  # Set layout for side-by-side plots
boxplot(age, main = "Boxplot of Age", col = "lightblue", ylab = "Age")
boxplot(fat, main = "Boxplot of %Fat", col = "lightgreen", ylab = "%Fat")

par(mfrow = c(1,2))  # Set layout for side-by-side plots
plot(age, fat, main = "Scatter Plot of Age vs %Fat", xlab = "Age", ylab = "%Fat", pch = 19, col = "blue")
qqnorm(fat, main = "Q-Q Plot of %Fat", col = "red")
qqline(fat, col = "black")

par(mfrow = c(1,1))  # Reset layout
