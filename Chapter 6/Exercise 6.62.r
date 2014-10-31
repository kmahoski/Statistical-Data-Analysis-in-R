milesFlown <- c(
	7.269, 6.775, 7.819, 8.317, 9.069, 10.248, 11.030,
	10.882, 10.333, 9.109, 7.685, 7.682, 8.350, 7.829,
	8.829, 9.948, 10.638, 11.253, 11.424, 11.391, 10.665,
	9.396, 7.775, 7.933, 8.186, 7.444, 8.484, 9.864,
	10.252, 12.282, 11.637, 11.577, 12.417, 9.637, 8.094,
	9.280, 8.334, 7.899, 9.994, 10.078, 10.801, 12.953,
	12.222, 12.246, 13.281, 10.366, 8.730, 9.614)

# a
plot.ts(milesFlown, type = "b")
# A trend can be noticed, but with each year, the number of miles is increased.

# b
plot(milesFlown)
stem(milesFlown)
# With the digidot plot, too, one can notice the same thing from before,
# but it is more noticeable on the Time Series plot. On the Stem-and-Leaf
# plot one can see the appearance of the distribution to a certain degree,
# but it is not as useful in this case as in the other two cases for
# observing things like periodic trends.
