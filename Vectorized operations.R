r <- c(1,3,5,6)
t <- c(2,4,5,9)
m = c(8,7,1)

r == t
n = r + t
o = m + t

#############################33

#Loops
x <- rnorm(5)
x

#R-specific programming loop
for (i in x) {
  print(i)
}

print(x[1])
print(x[2])
print(x[3])
print(x[4])
print(x[5])

#conventional programming loop
for (j in 1:5) {
  print(x[j])
}

#------------------------2nd part for today


N <- 1000000
a <- rnorm(N)
b <- rnorm(N)

#Vectorised approach 
c <- a * b

#De-Vectorised approach 
d <- rep(NA,N)
for (i in 1:N) {
  d[i] <- a[i]*b[i]
}

