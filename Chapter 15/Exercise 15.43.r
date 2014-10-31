surfaceFinishes <- c(10.32, 9.68, 9.92, 10.10, 10.20, 9.87, 10.14, 9.74, 9.80, 10.26)

nullMedianValue <- 10
confidenceLevel <- 0.95

SIGN.test(surfaceFinishes, md = nullMedianValue, alternative = "two.sided",
	conf.level = confidenceLevel)

