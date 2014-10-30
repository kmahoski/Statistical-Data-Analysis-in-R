times1 <- c(1.75, 1.92, 2.62, 2.35, 3.09, 3.15, 2.53, 1.91)
times2 <- c(1.83, 1.99, 3.13, 3.29, 2.65, 2.87, 3.40, 2.46, 1.89, 3.35)

par(mfrow = c(1, 2))
qqnorm(times1, datax = "TRUE")
qqline(times1, datax = "TRUE")
qqnorm(times2, datax = "TRUE")
qqline(times2, datax = "TRUE")
