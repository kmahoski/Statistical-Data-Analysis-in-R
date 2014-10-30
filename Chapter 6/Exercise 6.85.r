trial <- matrix(nrow = 5, ncol = 20)

trial[1,] <- c(
				850, 900, 930, 950, 980, 1000, 930, 760, 1000, 960,
				740, 1070, 850, 980, 880, 980, 650, 810, 1000, 960)
trial[2,] <- c(
				960, 960, 880, 850, 900, 830, 810, 880, 800, 760,
				940, 940, 800, 880, 840, 790, 880, 830, 790, 800)
trial[3,] <- c(
				880, 880, 720, 620, 970, 880, 850, 840, 850, 840,
				880, 860, 720, 860, 950, 910, 870, 840, 840, 840)
trial[4,] <- c(
				890, 810, 800, 760, 750, 910, 890, 880, 840, 850,
				810, 820, 770, 740, 760, 920, 860, 720, 850, 780)
trial[5,] <- c(
				890, 780, 760, 790, 820, 870, 810, 810, 950, 810,
				840, 810, 810, 810, 850, 870, 740, 940, 800, 870)

boxplot(trial[1,], trial[2,], trial[3,], trial[4,], trial[5,])
# The five trials don't have the same level of variability - the first
# has the highest, the third has the lowest. There isn't a pair of trials
# that have the same level of variability or same range. The same holds
# for the median, but still the medians are closer to one another for
# the different trials, with exception of the first that deviates.
# Each of the groups (trials) deviate from the real value, but at
# different levels. Also, it is interesting to note that all of the
# values are larger than the real value. The deviations of the metrics
# for centrality (mean value and median) from the real value follow, for
# each of the samples (for each of the trials).

for (i in 1 : 5) {
	print(paste("mean(trial[", i, ",]) = ", mean(trial[i,])))
	print(paste("median(trial[", i, ",]) = ", median(trial[i,])))
	print(paste("mean(trial[", i, ",]) - trueMean = ", mean(trial[i,]),
		" - 734.5 = ", mean(trial[i,]) - 734.5))
	print(paste("median(trial[", i, ",]) - trueMean = ", median(trial[i,]),
		" - 734.5 = ", median(trial[i,]) - 734.5))
}
# It can be seen that the greatest deviation from the mean value and the
# median is the one of first sample, those for the second and third follow,
# and the smallest values for the mean value and the median are those for
# the fourth and the fifth sample. This means that with the passage of time,
# by making the same experiment subsequently, the values are stabilizing,
# i.e. they converged to the real value. This may be due to a certain
# physical phenomenon that appeared at the instruments for measuring after
# a certain period of idleness (so that by using the same apparatus
# subsequently, the precision would be improved).
