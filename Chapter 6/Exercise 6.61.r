sunspots <- c(
				101, 31, 154, 38, 83, 90, 82, 7, 125, 23, 132, 67,
				66, 20, 85, 10, 131, 60, 35, 92, 68, 24, 118, 47,
				41, 10, 16, 8, 62, 94, 21, 8, 7, 13, 98, 96, 16,
				2, 4, 57, 124, 77, 6, 0, 2, 122, 96, 59, 4, 1, 8,
				138, 66, 44, 7, 5, 17, 103, 64, 47, 14, 12, 36,
				86, 54, 30, 34, 14, 50, 63, 39, 16, 45, 35, 62,
				37, 21, 7, 43, 46, 67, 24, 7, 37, 48, 41, 71, 11,
				4, 74, 42, 30, 48, 15, 23, 28, 24, 28, 40, 55)

plot(sunspots)
stem(sunspots)
# One can see from the plots that there was usually a smaller
# number of sunspots - around 45.
# This is confirmed by the mean value and the range of the sample.
mean(sunspots)
c(min(sunspots), max(sunspots))
