hardnessReadings1 <- c(63, 52, 58, 60, 55, 57, 53, 59)
hardnessReadings2 <- c(60, 51, 56, 59, 58, 54, 52, 61)

confidenceLevel <- 0.95

wilcox.test(hardnessReadings1, hardnessReadings2, conf.level = confidenceLevel,
	conf.int = TRUE, paired = TRUE)

