data("AirPassengers")

passengers <- as.numeric(AirPassengers)

breaks_seq <- seq(100, 700, by=150)

hist(passengers, breaks=breaks_seq, col="darkblue", border="black",
     main="Histogram of AirPassengers Dataset",
     xlab="Number of Air Passengers", ylab="Frequency",
     xlim=c(100, 700))
