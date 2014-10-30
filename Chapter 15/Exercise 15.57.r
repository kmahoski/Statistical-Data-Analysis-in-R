volumes.temperature70 <- c(1245, 1235, 1285, 1245, 1235)
volumes.temperature75 <- c(1235, 1240, 1200, 1220, 1210)
volumes.temperature80 <- c(1225, 1200, 1170, 1155, 1095)

kruskal.test(list(volumes.temperature70, volumes.temperature75, volumes.temperature80))
