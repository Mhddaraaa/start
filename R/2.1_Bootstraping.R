# Comparing numeric variable for 2 groups --> alternative of two sample test
# When: samples are small --> it's hard to find error

# Bootstrapping: Resampling a single data-set to
#     create a multitude of simulated sample
# Usage:calculate standard errors, confidence intervals and for hypothesis testing


data = read.table('ChickenFood.csv', sep = ',', header = T)
# Check everything
head(data)
names(data)
# Filter onlty two type of feed for simplicity
df2 = data[data$feed %in% c("meatmeal", "casein"), ]
nrow(df2)

table(df2$feed)
boxplot(df2$weight ~ df2$feed, las = 1, ylab = 'Weight', xlab = 'Feed')
# Absolute value of mean/median for two different diet |Y2 - Y1|
Y1 = mean(data$weight[data$feed == 'casein'])
Y2 = mean(data$weight[data$feed == 'meatmeal'])
# or another way
Y = with(data, tapply(df2$weight, df2$feed, mean))
Y1 = Y['casein']
Y2 = Y['meatmeal']

testStat1 = abs(Y1 - Y2)
# Do the same for median
testStat2 = abs(diff(with(data, tapply(df2$weight, df2$feed, median))))


#------------------------------------------
# Classic ways
# paired t-test: a statistical test that compares the averages/means 
#     and standard deviations of two related groups to determine 
#     if there is a significant difference between the two groups

#t.test(df2$feed ~ df2$weight, paired = F, var.eq = F)
#wilcox.test(df2$feed ~ df2$weight, paired = F)
#ks.test(df2$weight[feed = 'casein'], df2$weight[feed = 'meatmeal'],
#        paired = T)

#------------------------------------------
# Bootstrapping
print('Check how many casein and meatmeal there are in the dataFrame')
nrow(df2[df2$feed == 'casein', ])
nrow(df2[df2$feed == 'meatmeal', ])

set.seed(49)
n = length(df2$feed)
B = 10000 # Number of bootstrap sampling
variable = df2$weight

# a matrix with number of data row and sample col
bootStrapSample = matrix(sample(variable, size = n * B, replace = T),
                         nrow = n, ncol = B)
dim(bootStrapSample)
 
# Now we instantiate two zero vectors for test

bootTestStat1 = rep(0, B)
bootTestStat2 = rep(0, B)

for (i in 1:B){
  bootTestStat1[i] = abs(mean(bootStrapSample[1:12, i] - 
                                mean(bootStrapSample[13:23, i])))
  bootTestStat2[i] = abs(median(bootStrapSample[1:12, i] - 
                                  median(bootStrapSample[13:23, i])))
}

length(bootTestStat1)
length(bootTestStat2)

# Now lets check test stats: mean/median difference
message("Mean difference: ", testStat1)
message("Median difference: ", testStat2)

# Check first twenty Bootstap tests
round(bootTestStat1[1:20])
round(bootTestStat2[1:20])


# Now lets calculate P-value
# Under a set of assumptions what is the probability of getting
#   the observed test statistics or one moroe extreme, if the null assumption
#   is True H0

# P-value =
# (number of time that bootstrap test > observed) / (B: number of bootstrap test)

mean(bootTestStat1 > testStat1)
mean(bootTestStat2 > testStat2)

plot(density(bootTestStat1), las = 1, 
     xlab = expression(group('|', bar(Yc) - bar(Ym), "|")))

plot(density(bootTestStat2), las = 1, 
     xlab = expression(group('|', bar(Yc) - bar(Ym), "|")))

#------------------------------------------
# Bootstrapping confidence interval
# Comparing numeric variable for 2 groups --> alternative of two sample test
# An alternative approach to building a conf interval for the difference
#   in means using large sample approaches
#   (mean(Y1) - mean(Y2)) +- t SE(mean(Y1) - mean(Y2))

set.seed(234)
nC = nrow(df2[df2$feed == 'casein', ]) # Number of casein sample observation
nM = nrow(df2[df2$feed == 'meatmeal', ]) # Number of casein sample meatmeal
B = 10000 # Number of bootstrap sampling

# Bootstrap sample - each sample in a column
bootC = matrix(sample(df2$weight[df2$feed == 'casein'], size = B * nC,
                      replace = T), nrow = nC, ncol = B)

bootM = matrix(sample(df2$weight[df2$feed == 'meatmeal'],size = B * nM,
                      replace = T), nrow = nM, ncol = B)

cat("- Casein sample dimention:",dim(bootC), "\n- Meatmeal sample dimention:", dim(bootM))

# Check data
# bootC[1:5, 1:5]

# Now we need some test stat: Mean/Median
bootDiffMean  = colMeans(bootC) - colMeans(bootM)
bootDiffMedian = apply(bootC, MARGIN = 2, FUN = median) - 
               apply(bootM, MARGIN = 2, FUN = median)

cat("\nFirst 10 sample Mean: \n", round(bootDiffMean[1:10], 2))
cat("\nFirst 10 sample Median: \n", round(bootDiffMedian[1:10], 2))

# Make confidence interval:
#   1. Percentile method
#   2. Basic method
#   3. Normal method
#   4. Basic-corrected method

# Take all --> 95%: 97.5% upper bounds, 2.5% lower bounds
#   Remove 2.5% to form 95%

meanLowerBound = quantile(bootDiffMean, probs = 0.025)
meanHigherBound = quantile(bootDiffMean, probs = 0.975)

medianLowerBound = quantile(bootDiffMedian, probs = 0.025)
medianHigherBound = quantile(bootDiffMedian, probs = 0.975)

cat("\nMean weight is between:", meanLowerBound, "and", meanHigherBound)
cat("\nMedian weight is between:", medianLowerBound, "and", medianHigherBound)