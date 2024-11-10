# import .csv file

df = read.table(file = "LungCap.csv", header = T, sep = ',')
#df

df = read.csv("LungCap.csv", header = T)
#df
# For .txt use read.table(sep = "\t") or read.delim()

# read excel file
# install pakage
install.packages("readxl")

# load library
library("readxl")

#check if its loade
"readxl" %in% loadedNamespaces()

# unload library
unloadNamespace("readxl")

# another way to install
#remove.packages("readxl")

if (is.element("readxl", installed.packages())) {
  print("readxl already installed")
} else {
  print("installing readxl package")
  install.packages("readxl")
}


library("readxl")
df = read_excel(path = "LungCap.xls")
df = read_excel(path = "LungCap.xls", 
                col_types = c("numeric", "numeric", "numeric", "text", "text", "text"))

attach(df)

class("Age")
# write.table will export data

rm(list = ls())
print("--------------------------")

df = read.csv("LungCap.csv", header = T)

# check dimention of the data
dim(df)
# Check head and tail
head((df))
tail(df)

# Check number of rows and columns
ncol(df)
nrow(df)

#check specific row
df[1, ]
df[-(3:723), ]

# name of variable in header 
names(df)
# change variables name
colnames(df) = c( "LungCap","Age", "Height", "Smoke", "Gender", "Caesarean")
names(df)

# Calculate variable mean, median, max, min, sd, ...
mean(df$Age)
max(df$Height)
sd(df$LungCap)

# Check variable type
class(df$Age)
class(df$Smoke)

levels(df$Age)

print("-----------------------------")
summary(df)
print("-----------------------------")

# Another way to use variable names is to attach them
attach(df)
print("All people, male, and female mean of Age")
mean(Age)
mean(Age[Gender == 'male'])
mean(Age[Gender == 'female'])
# detach(df)

maleOver15 = df[Gender == 'male' & Age > 15, ]

nrow(maleOver15)

# add new column to dataFrame
femSmoke = Gender == 'female' & Smoke == 'yes'
length(femSmoke)
new_df = cbind(df, femSmoke)
new_df[1:3, ]

# now convert femsmoke to numeric
femSmoke = as.numeric(factor(new_df$femSmoke)) - 1
new_df = cbind(df, femSmoke)
new_df[1:3, ]

# save the new dataFrame
write.csv(new_df, file = "new_df.csv")

# apply function
df = read.csv("LungCap.csv", header = T)
colnames(df) = c( "LungCap","Age", "Height", "Smoke", "Gender", "Caesarean")
apply(df[, 1:3], MARGIN = 2, FUN = sum)
colSums(df[, 1:3])

#apply(df[, 1:3], MARGIN = 1, FUN = sum)
#rowSums(df[, 1:3])

apply(df[, 1:3], MARGIN = 2, FUN = mean, na.rm = T)

apply(df[, 1:3], MARGIN = 2, FUN = plot,
      type = 'l', main = 'Title', xlab = "Population", ylab="Not sure")

# tapply -> apply function to subsets of a variable or vector

summary(df)
attach(df)
names(df)

# calculate mean Age for Smoker/non-Smoker
tapply(X = Age, INDEX = Smoke, FUN = mean, na.rm = T)

# Another way
mean(Age[Smoke == 'yes'])
mean(Age[Smoke == 'no'])


tapply(Age, list(Smoke, Gender), FUN = mean, na.rm = T)
