cyclesToFailure <- c(675, 3650, 175, 1150, 290, 2000, 100, 375)

# a
qqnorm(cyclesToFailure, datax = "TRUE")
qqline(cyclesToFailure, datax = "TRUE")

# b
cyclesToFailureTransformed <- log(cyclesToFailure)
qqnorm(cyclesToFailureTransformed, datax = "TRUE")
qqline(cyclesToFailureTransformed, datax = "TRUE")
