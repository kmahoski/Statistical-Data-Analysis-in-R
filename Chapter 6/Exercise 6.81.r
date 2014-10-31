viscosities <- c(
	13.3, 14.5, 15.3, 15.3, 14.3, 14.8, 15.2, 14.5, 14.6, 14.1,
	14.3, 16.1, 13.1, 15.5, 12.6, 14.6, 14.3, 15.4, 15.2, 16.8,
	14.9, 13.7, 15.2, 14.5, 15.3, 15.6, 15.8, 13.3, 14.1, 15.4,
	15.2, 15.2, 15.9, 16.5, 14.8, 15.1, 17.0, 14.9, 14.8, 14.0,
	15.8, 13.7, 15.1, 13.4, 14.1, 14.8, 14.3, 14.3, 16.4, 16.9,
	14.2, 16.9, 14.9, 15.2, 14.4, 15.2, 14.6, 16.4, 14.2, 15.7,
	16.0, 14.9, 13.6, 15.3, 14.3, 15.6, 16.1, 13.9, 15.2, 14.4,
	14.0, 14.4, 13.7, 13.8, 15.6, 14.5, 12.8, 16.1, 16.6, 15.6)

par(mfrow = c(1, 2))
qqnorm(viscosities[c(1:40)], datax = "TRUE")
qqline(viscosities[c(1:40)], datax = "TRUE")
qqnorm(viscosities[c(41:80)], datax = "TRUE")
qqline(viscosities[c(41:80)], datax = "TRUE")
