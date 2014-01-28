library(ggplot2)

gDat <- read.delim("gapminderDataFiveYear.txt")
str(gDat)

p  <- ggplot(gDat, aes(x=gdpPercap, y=lifeExp))

p

p + geom_point()

p + geom_point() + scale_x_log10()

p  <-  p + scale_x_log10()

p + geom_point()

p + geom_point(aes(color=continent))

p + geom_point(alpha = 1/3, size =3)

p + geom_point(alpha = 1/3, size =3) + geom_smooth()

p + geom_point(alpha = 1/3, size =3) + geom_smooth(lwd = 3, se = FALSE)


p + geom_point(alpha = 1/3, size =3) + geom_smooth(lwd = 3, se = FALSE, method = "lm")

ggplot(gDat, aes(x=continent, y=lifeExp)) + geom_point()

ggplot(gDat, aes(x=continent, y=lifeExp)) + geom_jitter()

ggplot(gDat, aes(x=continent, y=lifeExp)) + geom_jitter(position = position_jitter(width=0.1), alpha=1/4)

ggplot(gDat, aes(x=continent, y=lifeExp)) + geom_boxplot()

ggplot(gDat, aes(x=continent, y=lifeExp)) + geom_boxplot() + geom_jitter(position = position_jitter(width=0.1), alpha=1/4)

## quantitative variable

ggplot(gDat, aes(x=lifeExp)) + geom_histogram()

ggplot(gDat, aes(x=lifeExp)) + geom_density()

## quantitative + qualitative

ggplot(gDat, aes(x=lifeExp, fill = continent)) + geom_histogram()

ggplot(gDat, aes(x=lifeExp, fill = continent)) + geom_histogram(position ="identity")

ggplot(gDat, aes(x=lifeExp, fill = continent)) + geom_density(alpha = 0.2)

## factor

table(gDat$continent)
ggplot(gDat, aes(x=continent)) + geom_bar()

ggplot(gDat, aes(x=continent)) + geom_bar() + coord_flip()

ggplot(gDat, aes(x=continent)) + geom_bar(width = 0.05) + coord_flip()

## facetting

summary(p)

p + geom_point()

p + geom_point() + facet_grid(~ continent)

p + geom_point() + facet_wrap(~ continent)

p + geom_point() + facet_wrap(~ continent) + geom_smooth(lwd=2, se = FALSE)

ggplot(gDat, aes(x=lifeExp)) + geom_density() + facet_wrap(~continent)

ggplot(gDat, aes(x=lifeExp)) + geom_density() + facet_grid(~continent)

ggplot(gDat, aes(x=lifeExp, fill = continent)) + geom_histogram() + facet_wrap(~continent)


ggplot(subset(gDat, year == 2007), aes(x=continent, y = lifeExp)) + geom_point()


