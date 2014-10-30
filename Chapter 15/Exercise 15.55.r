contactResistances1 <- c(95, 97, 99, 98, 99, 99, 99, 94, 95, 98)
contactResistances2 <- c(104, 102, 102, 105, 99, 102, 111, 103, 100, 103)
contactResistances3 <- c(119, 130, 132, 136, 141, 172, 145, 150, 144, 135)

kruskal.test(list(contactResistances1, contactResistances2, contactResistances3))
