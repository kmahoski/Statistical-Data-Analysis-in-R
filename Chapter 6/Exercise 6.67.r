fuelOctaneRatings <- c(
	88.5, 94.7, 84.3, 90.1, 89.0, 89.8, 91.6, 90.3,
	90.0, 91.5, 89.9, 98.8, 88.3, 90.4, 91.2, 90.6,
	92.2, 87.7, 91.1, 86.7, 93.4, 96.1, 89.6, 90.4,
	91.6, 90.7, 88.6, 88.3, 94.2, 85.3, 90.1, 89.3,
	91.1, 92.2, 83.4, 91.0, 88.2, 88.5, 93.3, 87.4,
	91.1, 90.5, 100.3, 87.6, 92.7, 87.9, 93.0, 94.4,
	90.4, 91.2, 86.7, 94.2, 90.8, 90.1, 91.8, 88.4,
	92.6, 93.7, 96.5, 84.3, 93.2, 88.6, 88.7, 92.7,
	89.3, 91.0, 87.5, 87.8, 88.3, 89.2, 92.3, 88.9,
	89.8, 92.7, 93.3, 86.7, 91.0, 90.9, 89.9, 91.8,
	89.7, 92.2)

qqnorm(fuelOctaneRatings, datax = "TRUE")
qqline(fuelOctaneRatings, datax = "TRUE")
# The points lie close to a line that slightly looks like the letter 'S'.
# This is an indicator that the distribution is skewed. Most of the values
# are below the line, which means that the skewness is positive, or to the left.
