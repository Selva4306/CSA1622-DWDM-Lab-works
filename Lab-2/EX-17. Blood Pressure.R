diabetes_data <- read.csv("C:\Users\Grim Reaper\Downloads\diabetes.csv")

# View first few rows
head(diabetes_data)

# Scatter plot: Blood Pressure vs Age
plot(diabetes_data$Age, diabetes_data$BloodPressure, 
     main="Blood Pressure vs Age", 
     xlab="Age", 
     ylab="Blood Pressure", 
     col="blue", pch=16)

# Create Age Groups
diabetes_data$AgeGroup <- cut(diabetes_data$Age, breaks=c(0, 20, 30, 40, 50, 60, 100), 
                              labels=c("0-20", "21-30", "31-40", "41-50", "51-60", "60+"))

# Calculate average Blood Pressure per Age Group
avg_bp <- tapply(diabetes_data$BloodPressure, diabetes_data$AgeGroup, mean, na.rm=TRUE)

# Bar chart: Average Blood Pressure by Age Group
barplot(avg_bp, col="lightblue", 
        main="Average Blood Pressure by Age Group", 
        xlab="Age Group", 
        ylab="Average Blood Pressure")