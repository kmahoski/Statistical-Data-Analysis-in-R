solution1 <- c(9.9, 9.4, 9.3, 9.6, 10.2, 10.6, 10.3, 10.0, 10.3, 10.1)
solution2 <- c(10.2, 10.6, 10.7, 10.4, 10.5, 10.0, 10.2, 10.7, 10.4, 10.3)
	  
confidenceLevel <- 0.95

wilcox.test(solution1, solution2, conf.level = confidenceLevel,
	conf.int = TRUE, paired = FALSE)
