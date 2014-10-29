cyclesToFailure <- c(
						1115, 1310, 1540, 1502, 1258, 1315, 1085, 798,
						1020, 865, 2130, 1421, 1109, 1481, 1567, 1883,
						1203, 1270, 1015, 845, 1674, 1016, 1102, 1605,
						706, 2215, 785, 885, 1223, 375, 2265, 1910,
						1018, 1452, 1890, 2100, 1594, 2023, 1315, 1269,
						1260, 1888, 1782, 1522, 1792, 1000, 1820, 1940,
						1120, 910, 1730, 1102, 1578, 758, 1416, 1560,
						1055, 1764, 1330, 1608, 1535, 1781, 1750, 1501,
						1238, 990, 1468, 1512, 1750, 1642)

# a
stem(cyclesToFailure, scale = 2)

# b
length(cyclesToFailure)
5 / 70
# No, because only 5 from 70 have survived in more than 2000 cycles.
# Therefore, from the given data we can conclude that the probability is 5 / 70,
# which is approximately 0.071 = 7.1%, which can be considered a low probability.
