dryingTimes1 <- c(
	1.6, 1.3, 1.5, 1.6, 1.7, 1.9, 1.8,
	1.6, 1.4, 1.8, 1.9, 1.8, 1.7, 1.5,
	1.6, 1.4, 1.3, 1.6, 1.5, 1.8)
					
dryingTimes2 <- c(
	1.8, 1.5, 1.5, 1.7, 1.6, 2.0, 2.1,
	1.7, 1.6, 1.9, 2.0, 1.9, 1.5, 1.7,
	1.6, 1.2, 1.6, 1.8, 1.6, 2.0)

nullMedianValue <- 0
confidenceLevel <- 0.95

# The approach in this case is the following:
# We use the already existing, previously declared function
# signTestNormalApproximation in order to calculate whether
# the two samples have equal medians, because always this
# hypothesis can be reduced to a one-sample hypothesis
# that has observations which are the differences between
# the matching elements (in pairs), and the median could be
# the difference between the medians (0 if we assume that
# both of the samples have same medians).
dryingTimesDifferences <- dryingTimes1 - dryingTimes2

signTestNormalApproximation(dryingTimesDifferences, md = nullMedianValue,
	alternative = "two.sided", conf.level = confidenceLevel)

