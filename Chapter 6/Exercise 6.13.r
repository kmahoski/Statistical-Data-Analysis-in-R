temperatures <- c(
	84, 49, 61, 40, 83, 67, 45, 66, 70, 69, 80,
	58, 68, 60, 67, 72, 73, 70, 57, 63, 70, 78,
	52, 67, 53, 67, 75, 61, 70, 81, 76, 79, 75,
	76, 58, 31)

# a
mean(temperatures)
mean1 <- mean(temperatures)
sd(temperatures)
sd1 <- sd(temperatures)

# b
plot(temperatures)

# c
temperatures <- c(
	84, 49, 61, 40, 83, 67, 45, 66, 70, 69, 80,
	58, 68, 60, 67, 72, 73, 70, 57, 63, 70, 78,
	52, 67, 53, 67, 75, 61, 70, 81, 76, 79, 75,
	76, 58)

mean(temperatures)
sd(temperatures)

mean(temperatures) - mean1
sd1 - sd(temperatures)
