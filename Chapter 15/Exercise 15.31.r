currents1 <- c(251, 255, 258, 257, 250, 251, 254, 250, 248)
currents2 <- c(250, 253, 249, 256, 259, 252, 260, 251)

confidenceLevel <- 0.95

wilcox.test(currents1, currents2, alternative = "greater", conf.level = confidenceLevel,
	conf.int = TRUE, paired = FALSE, exact = FALSE, correct = FALSE)

