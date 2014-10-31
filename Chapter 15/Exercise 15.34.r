temperatures1 <- c(206, 188, 205, 187, 194, 193, 207, 185, 189, 213, 192, 210, 194, 178, 205)
temperatures2 <- c(177, 197, 206, 201, 180, 176, 185, 200, 197, 192, 198, 188, 189, 203, 192)

confidenceLevel <- 0.95

wilcox.test(temperatures1, temperatures2, conf.level = confidenceLevel,
	conf.int = TRUE, paired = FALSE)
	