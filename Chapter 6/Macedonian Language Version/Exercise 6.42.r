temperatures <- c(
					84, 49, 61, 40, 83, 67, 45, 66, 70, 69, 80, 58,
					68, 60, 67, 72, 73, 70, 57, 63, 70, 78, 52, 67,
					53, 67, 75, 61, 70, 81, 76, 79, 75, 76, 58, 31)

# a
quantile1 <- quantile(temperatures)
quantile1

# b
temperatures1 <- median(temperatures)
temperatures1

# c
temperatures <- c(
					84, 49, 61, 40, 83, 67, 45, 66, 70, 69, 80, 58,
					68, 60, 67, 72, 73, 70, 57, 63, 70, 78, 52, 67,
					53, 67, 75, 61, 70, 81, 76, 79, 75, 76, 58)

quantile(temperatures)
# Разликите меѓу квантилите на примерокот со најмалата
# вредност (31) и без таа вредност.
quantile(temperatures) - quantile1

median(temperatures)
# Разликите меѓу медијаните на примерокот со најмалата
# вредност (31) и без таа вредност.
median(temperatures) - temperatures1

# d
boxplot(temperatures) 
