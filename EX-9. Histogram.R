marks <- c(55, 60, 71, 63, 55, 65, 50, 55, 58, 59, 61, 63, 65, 67, 71, 72, 75)

marks_sorted <- sort(marks)
n <- length(marks_sorted)
bin_size <- ceiling(n / 3)
bins_freq <- split(marks_sorted, ceiling(seq_along(marks_sorted) / bin_size))

min_val <- min(marks)
max_val <- max(marks)
bin_width <- (max_val - min_val) / 3
bins_width <- cut(marks, breaks = seq(min_val, max_val, by = bin_width), include.lowest = TRUE)

hist(marks, breaks = 5, col="lightblue", main="Histogram of Marks",
     xlab="Marks", ylab="Frequency", border="black")
