n <- 10
populationStandardDeviation <- 1
sampleStandardDeviation <- populationStandardDeviation / sqrt(n)
sampleStandardDeviation
nullMeanValue <- 0

# We decide to use the critical region of 1.96,
# i.e. to reject the null hypothesis if z0 >= 1.96.
zNull <- 1.96



# a
alphaValue <- 1 - pnorm(zNull)
alphaValue



# b
# Firstly, we calculate the upper bound for the mean values
# of the sample for which the null hypothesis H0: mu = 0
# will not be rejected - meanAlphaValue.

# First way - "manually", following from the definition.
meanAlphaValue <- zNull * sampleStandardDeviation
meanAlphaValue

# Second way - with a given function.
meanAlphaValue <- qnorm(1 - alphaValue, mean = nullMeanValue, sampleStandardDeviation)
meanAlphaValue

alternativeMeanValue <- 1
betaValue <- pnorm(meanAlphaValue, mean = alternativeMeanValue, sd = sampleStandardDeviation)
betaValue



# c
# We check for which of the numbers of the observations of the sample, the null hypothesis
# can be rejected, while it is rejected if the probability of that event is smaller than
# the level of significance, alpha (previously acquired and saved in the variable alphaValue)
# = 0.025.
comb = function(n, x)
{
	return (factorial(n) / (factorial(x) * factorial(n - x)))
}

signTestAlphaValue <- 0
# i - the number of observations from the sample that are smaller than the mean value
# (iterating through all of the R- = r- for which the null hypothesis could be rejected).
for (i in 0 : 5)
{
	p <- comb(10, i) * 0.5 ^ i * 0.5 ^ (10 - i)
	if (p < alphaValue)
		signTestAlphaValue <- signTestAlphaValue + p
	print(paste('P(X = ', i, ' | meanValue = ', nullMeanValue, ') = ', p, sep = ''))
}
signTestAlphaValue



# d
# P(type II error) = P(accept H0 | H0 is false)
# In this case: P(type II error) = P(accept H0: mean = 0 | mean = 1)
alternativeMeanValue <- 1
F_alternativeMeanValue <- pnorm(nullMeanValue, alternativeMeanValue, populationStandardDeviation)
F_alternativeMeanValue

alphaValue <- 0.025
betaValue <- 0

# We print the appropriate values for all of the cases of the real value of the
# mean value - 1.
# For each of the possible values, the body of the loop we execute a check -
# if for the given case, for the predicted value for the mean value we got
# a probability for that case happening that is larger than the lower bound
# of 0.025 and for the predicted as well as for the real value for the mean value,
# that probability is added to the betaValue variable, in order for the
# probability of type two error (beta) to be formed.
for (i in 0 : 10)
{
	pNull <- comb(10, i) * 0.5 ^ i * 0.5 ^ (10 - i)
	pAlternative <- comb(10, i) * F_alternativeMeanValue ^ i * (1 - F_alternativeMeanValue) ^ (10 - i)
	
	print('-------------------------')
	print(paste('P(X = ', i, ' | meanValue = ', alternativeMeanValue, ') = ', pAlternative, sep = ''))
	
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
		print(paste('P(X = ', i, ' | meanValue = ', nullMeanValue, ') = ', pNull,
			' > alpha = ', alphaValue, ', i.e. we fail to reject H0;', sep = ''))
		print(paste('P(X = ', i, ' | meanValue = ', alternativeMeanValue, ') = ',
			pAlternative, ' > alpha = ', alphaValue, ', i.e. H0 should be rejected.', sep = ''))
		
		betaValue <- betaValue + pAlternative
	}
}

print(paste('Type II error probability = beta = ', betaValue, sep = ''))
