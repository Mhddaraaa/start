# create a vector
a = c(1, 2, 4, 5)
typeof(a)

# create a range of number
a = 3:9
print(a)

a = seq(from = 3, to = 9, by=0.5)
a

# you can + - * / two vector of the same length

# create a matrix
a = matrix(1:9, nrow = 3, ncol = 3)
print(a)

b = matrix(
  data = c(3, -1, 2,
           4, 5, 1,
           0, 3, -2),
  nrow = 3, ncol = 3, byrow=T
)
print(b)
print("-----------------------------")
a
b

# Element wise operations
print(a + b)
print(a * b)

# matrix multiplication
print(a %*% b)

print(a)
print(t(a)) # Transpose of a

# Create a column matrix

A = matrix(1, 3, 1)
print(A)

# Diagonal matrix
print(diag(a))
print(diag(diag(a)))

# Inverse and det
c = matrix(
  c(3, -10,
    2, -5),
  nrow = 2, ncol = 2, byrow = T
)
print(c)
print(det(c))
print(solve(c))

# Matrix rank, qraux, pivot
info = qr(a)
print(info)
print(info$rank)
print(info$pivot)

# Dimention: row col
print(dim(a)) 

# row and col sum, mean
print(rowSums(a))
print(colSums(a))

print(rowMeans(a))
print(colMeans(a))


# matrix concatination
A = matrix(
  data = c(1, 3,
           -1, 2,
           0, 7),
  nrow = 3, ncol = 2, byrow = T
)

B = matrix(
  data = c(2, -5,
           1, 0,
           13, 1),
  nrow = 3, ncol = 2, byrow = T
)

print(A)
print(B)

print(cbind(A, B)) # Horizontal concat
print(rbind(A, B)) # Vertical concat

# remove everything (all variable) from environment
rm(list = ls())
