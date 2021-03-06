densities <- c(
	5.50, 5.30, 5.47, 5.10, 5.29, 5.65,
	5.55, 5.61, 5.75, 5.63, 5.27, 5.44,
	5.57, 5.36, 4.88, 5.86, 5.34, 5.39,
	5.34, 5.53, 5.29, 4.07, 5.85, 5.46,
	5.42, 5.79, 5.62, 5.88, 5.26)

# a
mean(densities)
sd(densities)
median(densities)

# b
qqnorm(densities, datax = "TRUE")
qqline(densities, datax = "TRUE")
