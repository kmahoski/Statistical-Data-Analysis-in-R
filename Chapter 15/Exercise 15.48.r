surfaceFinishes <- c(10.32, 9.68, 9.92, 10.10, 10.20, 9.87, 10.14, 9.74, 9.80, 10.26)

nullMedianValue <- 10
confidenceLevel <- 0.95

wilcox.test(surfaceFinishes, mu = nullMedianValue, alternative = "two.sided",
	conf.level = confidenceLevel, conf.int = TRUE)
