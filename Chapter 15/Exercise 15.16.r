# a
nullMedianValue <- 3.5
nullMedianValue

nullLambdaValue <- log(2) / nullMedianValue
nullLambdaValue

nullMuValue <- 1 / nullLambdaValue
nullMuValue



# b
comb = function(n, x)
{
	return (factorial(n) / (factorial(x) * factorial(n - x)))
}

F_nullMedianValue <- pexp(nullMedianValue, nullLambdaValue)

p <- comb(10, 3) * F_nullMedianValue ^ 3 * (1 - F_nullMedianValue) ^ 7
p



# c
# P(type II error) = P(accept H0 | H0 is false)
# In this case: P(type II error) = P(accept H0: median = 3.5 | median = 4.5)

# We check in which of the cases the null hypothesis would be accepted assuming
# that the median is 3.5.
for (i in 0 : 10)
{
	p <- comb(10, i) * F_nullMedianValue ^ i * (1 - F_nullMedianValue) ^ (10 - i)
	print(paste('P(X = ', i, ' | medianValue = ', nullMedianValue, ') = ', p, sep = ''))
}
# We conclude that we accept when we have values between 3 and 7 (inclusive) that are
# smaller than the assumed median value - 3.5.

alternativeMedianValue <- 4.5
alternativeLambdaValue <- log(2) / alternativeMedianValue
F_alternativeMedianValue <- pexp(nullMedianValue, alternativeLambdaValue)

alphaValue <- 0.05
betaValue <- 0

# We print the appropriate values for all of the cases of the real value of the
# median - 4.5.
# For each of the possible values, the body of the loop we execute a check -
# if for the given case, for the predicted value for the mean value we got
# a probability for that case happening that is larger than the lower bound
# of 0.05 and for the predicted as well as for the real value for the median,
# that probability is added to the betaValue variable, in order for the
# probability of type two error (beta) to be formed.
for (i in 0 : 10)
{
	pNull <- comb(10, i) * F_nullMedianValue ^ i * (1 - F_nullMedianValue) ^ (10 - i)
	pAlternative <- comb(10, i) * F_alternativeMedianValue ^ i * (1 - F_alternativeMedianValue) ^ (10 - i)
	
	print('-------------------------')
	print(paste('P(X = ', i, ' | medianValue = ', alternativeMedianValue, ') = ', pAlternative, sep = ''))
	
	# If the probability for that case to happen for the value of the mean value of
	# the null hypothesis is larger than the lower bound alpha (i.e. we can say that
	# we cannot reject the null hypothesis), and also the probability of that case
	# to happen for the mean value of the alternative hypothesis is larger than the
	# lowwe bound alpha (i.e. we should accept the alternative hypothesis), that
	# probability (for the alternative hypothesis) is added to beta, i.e.
	# the probability of type II error.
	if (pNull > alphaValue && pAlternative > alphaValue)
	{
		print('*************************')
		print(paste('For X = ', i, ':', sep = ''))
		print(paste('P(X = ', i, ' | medianValue = ', nullMedianValue, ') = ', pNull, ' > alpha = ', alphaValue,
			', i.e. we fail to reject H0;', sep = ''))
		print(paste('P(X = ', i, ' | medianValue = ', alternativeMedianValue, ') = ', pAlternative,
		' > alpha = ', alphaValue, ', i.e. H0 should be rejected.', sep = ''))
		
		betaValue <- betaValue + pAlternative
	}
}

print(paste('Type II error probability = beta = ', betaValue, sep = ''))
