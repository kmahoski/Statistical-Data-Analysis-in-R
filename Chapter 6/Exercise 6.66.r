temperatures <- c(
					84, 49, 61, 40, 83, 67, 45, 66, 70, 69, 80, 58,
					68, 60, 67, 72, 73, 70, 57, 63, 70, 78, 52, 67,
					53, 67, 75, 61, 70, 81, 76, 79, 75, 76, 58, 31)

qqnorm(temperatures, datax = "TRUE")
qqline(temperatures, datax = "TRUE")
# This sample has normal distribution because the points lie close to the curve
# that is slightly convex - most of the values lie above the line. This is an
# indicator of negative skewness of the distribution (skewness to the right).
