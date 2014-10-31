times <- c(
	0.19, 0.78, 0.96, 1.31, 2.78, 3.16, 4.15,
	4.67, 4.85, 6.5, 7.35, 8.01, 8.27, 12.06,
	31.75, 32.52, 33.91, 36.71, 72.89)

qqnorm(times, datax = "TRUE")
qqline(times, datax = "TRUE")
# It can't be said that the distribution is normal, because the
# deviation of the points from the line are too large - if one
# imagines a curve which passes through the smallest distance
# from the points, it would have curvatures that are too great
# and sudden changes of the direction - it would have a form
# close to a stair-like, but here it would have to a certain
# degree curved instead of sharp stairs. It would have sharp
# stairs if the data were discrete, and in this case it is
# continuous, but there are two ranges that are divided one from
# another (something like two points around which other values
# are concentrated or like two clusters) and one outlier (72.89).
# For the distribution it can be said that it has a significant
# skewness to the left.
