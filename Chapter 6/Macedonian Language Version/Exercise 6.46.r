dragCoefficients <- c(79, 100, 74, 83, 81, 85, 82, 80, 84) * 0.0001

# a
quantile1 <- quantile(dragCoefficients)
quantile1

# b
boxplot(dragCoefficients)

# c
dragCoefficients <- c(79, 74, 83, 81, 85, 82, 80, 84) * 0.0001

quantile(dragCoefficients)
# Разликите меѓу квантилите на примерокот со најголемата
# вредност (100) и без таа вредност.
quantile(dragCoefficients) - quantile1

boxplot(dragCoefficients)
