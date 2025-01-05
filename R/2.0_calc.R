# Calc probabilities for Binomial Random Variable
# P(X=K) = c(n, k) * P^k * (1-P)^(n-k)
# Assume: n = 20, P = 1/6

# Find value for the prob density func of X, f(x)
print("value for the prob density func P(x=3), n = 20, P = 1/6")
dbinom(x = 3, size = 20, prob = 1/6) # x = 0:3 all individually

# Now we want to calc x <= 3, so we can sum over dbinom under 3, x = 0, 1, 2, 3 
x = 0
for (i in 0:3){
  x = x + dbinom(x = i, size = 20, prob = 1/6)
}
print("value for the prob density func P(x<=3), n = 20, P = 1/6")
print(x)

# Or
pbinom(q = 3, size = 20, prob = 1/6)
#-----------------------------------------------
# Calc probabilities for poisson Random Variable
# P(X=x) = (e^(-λ) * λ^x) / x!
# Where 0 <= x < inf,and λ average number of accurences
# λ = 7

print("probabilities for poisson Random Variable, x=4, lambda = 7")
dpois(x=4, lambda = 7)

# Two way to calculate poisson x <= 4
x = 0
for (i in 0:4){
  x = x + dpois(x=i, lambda = 7)
}
print("probabilities for poisson Random Variable, x<=4, lambda = 7")
print(x)

ppois(q = 4, lambda = 7, lower.tail = T)

# P(X >=12)
print("probabilities for poisson Random Variable, x>=12, lambda = 7")
ppois(q = 12, lambda = 7, lower.tail = F)
# rpois() random
# qpois() quanile

#-----------------------------------------------
# Calc prob, percentile, and taking random sample from a Normal distribution
# mean = 75, std = 5 - N(μ = 75, σ = 5)
# P(X <= 70)
print("Normal prob: mean = 75, std = 5 - N(μ = 75, σ = 5)")
pnorm(q = 70, mean = 75, sd = 5)
# P(X > 1), change mean to zero so won't have 1 as answer
print("Normal prob, q >= 1: mean = 0, std = 5 - N(μ = 75, σ = 5)")
pnorm(q = 1, mean = 0, sd = 5, lower.tail = F)

# p	is vector of probabilities.
print("Normal prob, P(X<=0.25): mean = 75, std = 5 - N(μ = 75, σ = 5)")
qnorm(p = 0.25, mean = 75, sd = 5)


x = seq(55, 95, 0.25)
dens = dnorm(x, 75, 5)
plot(x, dens, type = 'l', las = 1)
abline(v=75, col='red', lw = 3) # plot mean vertical line

# Random sample, n is number of observations. 
rand = rnorm(n = 40, mean =75, sd =5)
hist(rand, las = 1)
box()
#-----------------------------------------------
# Finding probability and percentile for t-distribution
# t-distribution: It is a type of normal distribution used for
#     smaller sample sizes, where the variance in the data is unknown.

# Find P-value and Critical value for constructing confident interval
# P-value: if > α(significance) --> reject the null hyposis
# Critical value: compre with test statistics --> rejection area

# t-distribution: mean = 0, std = 1, 25 degree of freedom

# One sided P-value: P(t > 2.3)
print("t-distribution: mean = 0, std = 1, 25 degree of freedom one sided P-value: P(t > 2.3)")
pt(q = 2.3, df = 25, lower.tail = F)

# Two sided P-value: P(t > 2.3 and t < -2.3) 
print("t-distribution: mean = 0, std = 1, 25 degree of freedom two sided P-value: P(t > 2.3)")
pt(q = 2.3, df = 25, lower.tail = F) + pt(q = -2.3, df = 25)
# Or we can use qt(), p	is vector of probabilities.
qt(p = 0.025, df = 25, lower.tail = T)

# pf() prob for f distribution
# pe() prob for exp distribution
#-----------------------------------------------
# Conducting one sample t-test confidence interval for mean

# Import data
headers = c("LungCap", "Age", "Height", "Smoke", "Gender", "Caesarean")
data = read.table('LungCap.csv', sep = ',', header = T)
colnames(data) = headers
# Check everything
head(data)
names(data)

boxplot(data$LungCap, las = 1)
# H0 = μ < 8 - one-sided
# 95% confidence interval for μ
t.test(data$LungCap, mu=8, alternative = 'less', conf.level = 0.95)
# we can use 'alt' and 'conf' instead of alternative and conf.interval
# for two-sided we must change alt = 'two.sided' which is default

# Check t.test functionality
TEST = t.test(data$LungCap, mu=8, conf.level = 0.99)
attributes(TEST)

TEST$p.value
TEST$conf.int
#-----------------------------------------------
# Now with two sample: examining difference in Mean for two population
attach(data)
boxplot(LungCap ~ Smoke, las = 1)

# H0: μ LungCap of Smoker == non-Smoker
# Two-sided test - assume non equal variance

t.test(LungCap ~ Smoke, mu = 0, alt='two.sided', conf = 0.95,
       var.eq = F, paires = F)

# How decide equal/non-equal variances:
#   1. Check boxplot
#   2. var(VN[Smoke == 'yes']): Compare σ
#   3. levene test: package: car
#   levenetest(LuncCap ~ Smoke): Small P-value: non-equal