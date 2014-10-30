titaniumContents <- c(
						8.32, 8.05, 8.93, 8.65, 8.25, 8.46, 8.52,
						8.35, 8.36, 8.41, 8.42, 8.30, 8.71, 8.60,
						8.83, 8.50, 8.38, 8.29, 8.46)
					  
nullMedianValue <- 8.50
confidenceLevel <- 0.95

wilcox.test(titaniumContents, alternative = "two.sided", mu = nullMedianValue,
	conf.level = confidenceLevel, conf.int = TRUE, paired = FALSE, exact = FALSE, correct = FALSE)
	