impurityLevels1 <- c(1.2, 1.3, 1.5, 1.4, 1.7, 1.8, 1.4, 1.3)
impurityLevels2 <- c(1.4, 1.7, 1.5, 1.3, 2.0, 2.1, 1.7, 1.6)

nullMedianValue <- 0
confidenceLevel <- 0.95

impurityLevelDifferences <- impurityLevels1 - impurityLevels2

signTestNormalApproximation(impurityLevelDifferences, md = nullMedianValue,
	alternative = "two.sided", conf.level = confidenceLevel)
	