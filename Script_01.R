a <- 2
b <- 4
n <- 60

x <- runif(n)
(avgX <- mean(x))
sigSq <- 0.5
y <- a+b*x+rnorm(n, sd=(sigSq))

plot(x,y)
abline(a,b,col="green", lwd=2)
