impurities <- c(
	2.4, 2.5, 1.7, 1.6, 1.9, 2.6, 1.3, 1.9,
	2.0, 2.5, 2.6, 2.3, 2.0, 1.8, 1.3, 1.7,
	2.0, 1.9, 2.3, 1.9, 2.4, 1.6)
					  
nullMedianValue <- 2.5
confidenceLevel <- 0.95

wilcox.test(impurities, alternative = "less", mu = nullMedianValue, conf.level = confidenceLevel,
	conf.int = TRUE, paired = FALSE)
	