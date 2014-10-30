batches <- c(
				94.1, 93.2, 90.6, 91.4, 88.2, 86.1, 95.1, 90.0,
				92.4, 87.3, 86.6, 91.2, 86.1, 90.4, 89.1, 87.3,
				84.1, 90.1, 95.2, 86.1, 94.3, 93.2, 86.7, 83.0,
				95.3, 94.1, 97.8, 93.1, 86.4, 87.6, 94.1, 92.1,
				96.4, 88.2, 86.4, 85.0, 84.9, 78.3, 89.6, 90.3,
				93.1, 94.6, 93.6, 94.7, 91.1, 92.4, 90.6, 89.1,
				88.8, 86.4, 85.1, 84.0, 93.7, 87.7, 90.6, 89.4,
				88.6, 84.1, 82.6, 83.1, 84.6, 83.6, 85.4, 89.7,
				87.6, 85.1, 89.6, 90.0, 90.1, 94.3, 97.3, 96.8,
				94.4, 96.1, 98.0, 85.4, 86.6, 91.7, 87.5, 84.2,
				85.1, 90.5, 95.6, 88.3, 84.1, 83.7, 82.9, 87.3,
				86.4, 84.5)

# a
mean(batches, trim = 0.1)

# b
mean(batches, trim = 0.2)

# c
abs(mean(batches) - mean(batches, trim = 0.1))
abs(mean(batches) - mean(batches, trim = 0.2))
abs(mean(batches, trim = 0.1) - mean(batches, trim = 0.2))
# Во проценти:
100 * (1 - min(mean(batches), mean(batches, trim = 0.1)) / max(mean(batches),
	mean(batches, trim = 0.1)))
100 * (1 - min(mean(batches), mean(batches, trim = 0.2)) / max(mean(batches),
	mean(batches, trim = 0.2)))
100 * (1 - min(mean(batches, trim = 0.1),
	mean(batches, trim = 0.2)) / max(mean(batches, trim = 0.1),
	mean(batches, trim = 0.2)))
	