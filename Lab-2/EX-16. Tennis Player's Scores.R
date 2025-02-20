player_scores <- c(15, 18, 21, 19, 25, 30, 35, 40, 100)

boxplot(player_scores, col = "lightgreen", horizontal = TRUE,
        main = "Boxplot of Tennis Player's Scores",
        xlab = "Points Scored")

grid()