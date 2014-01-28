month.name
(x <- cbind(month.abb, month.name))
(x <- matrix(LETTERS, ncol=2))
(x <- data.frame(month.num=1:12,
                I(month.abb),
                I(month.name)))

(x <- round(rnorm(8),2))
set.seed(1)
(x <- round(rnorm(8),2))
names(x) <- letters[seq_along(x)]
cbind()