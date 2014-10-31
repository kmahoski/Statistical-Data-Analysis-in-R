lengths1 <- c(0.7, 0.8, 0.8, 0.9, 1.0)
lengths2 <- c(0.8, 0.8, 0.9, 0.9, 1.0)
lengths3 <- c(0.9, 1.0, 1.7, 2.0, 4.0)
lengths4 <- c(0.9, 1.0, 1.7, 2.0, 4.0)

kruskal.test(list(lengths1, lengths2, lengths3, lengths4))
