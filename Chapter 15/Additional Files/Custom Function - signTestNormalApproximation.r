signTestNormalApproximation <- function(dataset, md, alternative = "two.sided", conf.level = 0.95)
{
	if (conf.level <= 0)
	{
		error('The confidence level must be a positive real value in the (0, 1) range...');
	}
	if (alternative != "less" && alternative != "greater" && alternative != "two.sided")
	{
		error('The "alternative" argument can be either "less", "greater", or  "two.sided"...');
	}
	if (is.infinite(md) || is.nan(md))
	{
		error('The median ("md" argument) must be a real number...');
	}
		
	sampleSize <- length(dataset)
	approximatedStandardDeviation <- sqrt(0.25 * sampleSize)
	
	if (alternative == "greater")
	{
		print('Alternative: greater.')
		print(paste('H_a: median >', md))
		
		criticalValue <- qnorm(conf.level)
	
		rPlus <- 0
		for(i in 1 : sampleSize)
		{
			if (dataset[i] > md)
				rPlus <- rPlus + 1
		}

		testStatistic <- (rPlus - 0.5 * sampleSize) / (0.5 * sqrt(sampleSize))

		comparisonMessage <- ifelse(testStatistic <= criticalValue, '<=', '>')
		nullHypothesisMessage <- ifelse(testStatistic <= criticalValue,
			'We fail to reject the null hypothesis.',
			'We reject the null hypothesis in favor of the alternative.')
		print(paste('testStatistic =', testStatistic, comparisonMessage, criticalValue, '= criticalValue'))
		print(paste('P-value:', 1 - pnorm(testStatistic)))
		print(nullHypothesisMessage)
	}
	else
	{
		if (alternative == "less")
		{
			print('Alternative: less.')
			print(paste('H_a: median <', md))
			
			criticalValue <- qnorm(1 - conf.level)
		
			rPlus <- 0
			for(i in 1 : sampleSize)
			{
				if (dataset[i] > md)
					rPlus <- rPlus + 1
			}

			testStatistic <- (rPlus - 0.5 * sampleSize) / (0.5 * sqrt(sampleSize))

			comparisonMessage <- ifelse(testStatistic >= criticalValue, '>=', '<')
			nullHypothesisMessage <- ifelse(testStatistic >= criticalValue,
				'We fail to reject the null hypothesis.',
				'We reject the null hypothesis in favor of the alternative.')
			print(paste('testStatistic =', testStatistic, comparisonMessage, criticalValue, '= criticalValue'))
			print(paste('P-value:', pnorm(testStatistic)))
			print(nullHypothesisMessage)
		}
		else
		{
			if (alternative == "two.sided")
			{
				print('Alternative: two-sided.')
				print(paste('H_a: median !=', md))
				
				criticalValue <- qnorm(1 - ((1 - conf.level) / 2))
				
				rMinus <- 0
				for(i in 1 : sampleSize)
				{
					if (dataset[i] < md)
						rMinus <- rMinus + 1
				}

				testStatistic <- (rMinus - 0.5 * sampleSize) / (0.5 * sqrt(sampleSize))

				comparisonMessage <- ifelse(abs(testStatistic) <= criticalValue, '<=', '>')
				nullHypothesisMessage <- ifelse(abs(testStatistic) <= criticalValue,
					'We fail to reject the null hypothesis.',
					'We reject the null hypothesis in favor of the alternative.')
				print(paste('abs(testStatistic) =', abs(testStatistic), comparisonMessage, criticalValue, '= criticalValue'))
				print(paste('P-value:', 2 * (1 - pnorm(abs(testStatistic)))))
				print(nullHypothesisMessage)
			}
		}
	}
}
