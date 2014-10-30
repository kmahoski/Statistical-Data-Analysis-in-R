dragCoefficients <- c(79, 100, 74, 83, 81, 85, 82, 80, 84) * 0.0001

# a
quantile1 <- quantile(dragCoefficients)
quantile1

# b
boxplot(dragCoefficients)

# c
dragCoefficients <- c(79, 74, 83, 81, 85, 82, 80, 84) * 0.0001

quantile(dragCoefficients)
# The differences between the quantiles of the sample with and the
# highest value (100) without that value.
quantile(dragCoefficients) - quantile1

boxplot(dragCoefficients)
