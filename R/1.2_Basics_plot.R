# bar/pie charts

df = read.csv("LungCap.csv", header = T,
              col.names = c("LungCao", 'Age', "Height", "Smoke", "Gender", "Caesarean"))
df[1:3, ]
attach(df)

#class(Age)
# Check frequency of a variable
table(Age)
#table(Height)

percentage = table(Age) / nrow(df)

# Plot a barplor and a box around it
barplot(percentage, main = "Eache age percentage", xlab = "Age",
        ylab = "Percentage", las=1)
box()

# Horizontal barplot
allAges = length(table(Age))
barplot(percentage, main = "Eache age percentage", xlab = "Percentage",
        ylab = "Age", las=1, horiz = T, col = 1:allAges)
box()

#---------------------------------------------
pie(percentage, main = "Eache age percentage", col = rainbow(allAges),
    lty = "blank", border = par('fg'))
# lty = “blank”, “solid”, “dashed”, “dotted”, “dotdash”, “longdash”, “twodash”
box()

#--------------------------------------------
# Boxplot
boxplot(Age)
boxplot(Age, quantile(Age, probs = seq(0, 1, 0.2)))

boxplot(Age ~ Gender, las = 1)
# same plot
boxplot(Age[Gender == 'female'], Age[Gender == 'male'],
        names = c('female', 'male'), col = c(2, 4))
boxplot(Age[Gender == 'female'], Age[Gender == 'male'], las = 1,
        names = c('female', 'male'), col = c('red', 'blue'), horizontal = T,
        main = 'Age Boxplot', ylab = 'Gender', xlab = 'Age')

#--------------------------------------------
#Stradified boxplot
ageGroup = cut(Age, breaks = c(0, 13, 15, 17, 25),
               labels = c("0-13", "14-15", "16-17", "18-25"))
levels(ageGroup)

boxplot(Age~Smoke*ageGroup, las = 1, col = c(2, 4), main = 'Smoker/non-smoker')

boxplot(LungCao[Age > 18] ~ Smoke[Age>18], col = c(2, 4), las = 1,
        ylab = "Lung capacity", xlab = "Smoker/non-Smoker",
        main =  'Poeple older that 18')

legend(x = 2, y = 14.5, legend = c("Smoker", "non-Smoker"),
       col = c(2, 4), pch =15, cex = 0.8, box.lty = 0)

legend(x = 1.5, y = 14.5, legend = c("Smoker", "non-Smoker"),
       col = c(2, 4), pch =15, cex = 0.8, box.lty = 2, box.col = 'red',
       bg = 'lightblue')

#position oc legend: 
#"bottomright", "bottom", "bottomleft", "left", "topleft", "top", "topright", "right" and "center".
legend("bottomright", legend = c("Smoker", "non-Smoker"),
       col = c(2, 4), pch =15, cex = 0.8,
       box.lwd = 2, box.lty = 3, box.col = 'green')

#--------------------------------------------
# Here I change xaxis nodes
#Histogram
hist(Age, col = 2, las = 1)
hist(Age, col = 3, las = 1, fre = F)
#hist(Age, col = 3, las = 1, prob = T)
hist(Age, col = 4, las = 1, prob = T, ylim = c(0, 0.1), breaks = 6,
     main = "Age vs probability")

hist(Age, col = 5, las = 1, prob = T, ylim = c(0, 0.1), xlim = c(0, 22),
     breaks = seq(0, 20, 2), main = "Age vs probability", xaxt = 'n')
box()
axis(1, at = seq(0, 22, 2), labels = seq(0, 22, 2), las = 1)
lines(density(Age), col = 'red', lwd = 3)

#--------------------------------------------
# Stem and leaf plot
X = df[Gender == 'male', ]
stem(X$Age, scale = 1)
#--------------------------------------------
#Cluster/Stack - barchart - mosaic

class(Gender)
class(Smoke)
levels(Smoke)
df[1:3, ]

# First we need to produce a contigency table
t = table(Smoke, Gender) 

barplot(t)
# Cluster
barplot(t, beside = T, col = c(2, 4), las = 1, main = " Male vs Female smoker") 
box()
legend('topright', legend = c('non- Smoker', 'Smoker'), col = c(2, 4),
       pch =15, cex = 0.8, box.lty = 0)

# Conditional probability
barplot(t, beside = T, legend.text = c('non- Smoker', 'Smoker'), 
        main = " Male vs Female smoker", las = 1, col = c('green', 'red'), 
        ylab = 'Population')
box()

mosaicplot(t, color = c(2, 4), shade = T)
box()
#--------------------------------------------
#Scatter plot

class(Age)
class(Height)
summary(Age)

cor(Age, Height) # Default Pearson correlation
# method = c("pearson", "kendall", "spearman")

plot(Age, Height, xlab = 'Age', ylab = 'Height',las = 1,
     main = "Age-Height relationship", pch = 8, col = 2, cex = 0.8)
abline(lm(Height ~ Age), col = 4, lwd = 3)
lines(smooth.spline(Age, Height), lwd = 4, lty = 2)

#--------------------------------------------
# Plot modification
# Fonts: font.main, font.lab, font.axis ... 1 2 3 4
# Colors col.main, col.lab, col.axis
# Character pch = 2/'w'

x1 = Age[Gender == 'male']
y1 = Height[Gender == 'male']

x2 = Age[Gender == 'female']
y2 = Height[Gender == 'female']

plot(x1, y1, col = 'blue', pch = 'm', xlab = 'Age', ylab = 'Height', las = 1)
points(x2, y2, pch = 'f', col = 6)

# Another way
par(mfrow = c(1, 2))
plot(x1, y1, col = 'blue', pch = 16, xlab = 'Age', ylab = 'Height', las = 1)
plot(x2, y2, col = 'pink', pch = 17, xlab = 'Age', ylab = '', yaxt = 'n')

# Relabeling
par(mfrow = c(1, 1))

plot(Age, Height, axes = F, col = 4, main = 'Age vs Height')
axis(1, at = seq(0, 20, 2), labels = seq(0, 20, 2), las = 1)
axis(2, at = seq(44, 82, 4), labels = seq(44, 82, 4), las = 1)
box()

text(x = 2.5, y = 76, label = "PearsonCor = 0.835", adj = 0,
     cex = 0.8, col = 2, font = 4)

abline(h = mean(Height), col = 'red', lwd = 2)
text(x = 2.5, y = mean(Height) + 1, adj = 0, label = "mean Height",
     col = 'red', cex = 0.8)

mtext(text = "Nice plot", side = 1, adj = 0.5, col = 2, font = 4, cex = 0.8)
#side = 1, 2, 3, 4

plot(x1, y1, col = 4, xlab = 'Age', ylab = 'Height', las = 1,
     pch = 16, xaxt = 'n')
axis(1, at = seq(0, 22, 2), labels = seq(0, 22, 2))
points(x2, y2, col = 2, xlab = 'Age', ylab = 'Height', las = 1,
     pch = 17)

legend('topleft', legend = c('male', 'female'), pch = c(16, 17),
       col = c(4, 2), bty = 'n')

lines(smooth.spline(x1, y1), col = 'blue', lwd = 3)
lines(smooth.spline(x2, y2), col = 'red', lwd = 3)
