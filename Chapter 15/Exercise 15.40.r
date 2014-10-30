flowRates1 <- c(2.7, 4.6, 2.6, 3.0, 3.2, 3.8)
flowRates2 <- c(4.9, 4.6, 5.0, 4.2, 3.6, 4.2)
flowRates3 <- c(4.6, 3.4, 2.9, 3.5, 4.1, 5.1)

kruskal.test(list(flowRates1, flowRates2, flowRates3))
