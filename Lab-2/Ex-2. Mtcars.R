data("mtcars")

x <- 1:nrow(mtcars)

plot(x, mtcars$mpg, type="l", col="red", lwd=2, ylim=c(min(mtcars$mpg, mtcars$qsec), max(mtcars$mpg, mtcars$qsec)),
     xlab="Car Index", ylab="Values", main="Multiple Lines in Line Chart")

lines(x, mtcars$qsec, col="blue", lwd=2)
legend("topright", legend=c("MPG", "QSEC"), col=c("red", "blue"), lwd=2)
