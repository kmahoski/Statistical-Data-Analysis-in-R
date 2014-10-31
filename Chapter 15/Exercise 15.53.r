volumes.Ridgecrest <- c(755, 751, 752, 753, 753, 753, 753, 754, 752, 751)
volumes.ValleyView <- c(756, 754, 757, 756, 755, 756, 756, 755, 755, 756)

confidenceLevel <- 0.975

wilcox.test(volumes.Ridgecrest, volumes.ValleyView, alternative = "two.sided",
	conf.level = confidenceLevel, conf.int = TRUE)
	