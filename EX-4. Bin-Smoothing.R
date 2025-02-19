data_values <- c(11,13,13,15,15,16,19,20,20,20,21,21,22,23,24,30,40,45,45,45,71,72,73,75)

data_values <- sort(data_values)

num_bins <- 4
bin_size <- length(data_values) / num_bins

bins <- split(data_values, ceiling(seq_along(data_values) / bin_size))

bin_means <- lapply(bins, mean)
smoothed_mean <- unlist(lapply(1:length(bins), function(i) rep(round(bin_means[[i]]), length(bins[[i]]))))

bin_medians <- lapply(bins, median)
smoothed_median <- unlist(lapply(1:length(bins), function(i) rep(round(bin_medians[[i]]), length(bins[[i]]))))

smoothed_boundary <- unlist(lapply(bins, function(bin) {
  min_val <- min(bin)
  max_val <- max(bin)
  sapply(bin, function(x) ifelse(abs(x - min_val) < abs(x - max_val), min_val, max_val))
}))

cat("Original Data: ", data_values, "\n")
cat("Smoothed by Bin Mean: ", smoothed_mean, "\n")
cat("Smoothed by Bin Median: ", smoothed_median, "\n")
cat("Smoothed by Bin Boundaries: ", smoothed_boundary, "\n")
