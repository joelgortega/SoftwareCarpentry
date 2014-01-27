goURL <- "http://tiny.cc/gapminder"
gDat <- read.delim(goURL)

dDat <- read.delim("gapminderDataFiveYear.txt")

gDat
str(gDat)

read.table()

head(gDat)
tail(gDat)
names(gDat)
dim(gDat)
nrow(gDat)
ncol(dDat)
head(rownames(gDat))
length(gDat)
summary(gDat)

gDat$lifeExp

hist(gDat$lifeExp)

class(gDat$country)

table(gDat$continent)
levels(gDat$continent)
nlevels(gDat$continent)

subset(gDat, subset = country == "Cambodia")
subset(gDat, subset = country %in% c("Japan", "Belgium"))

subset(gDat, subset = year ==1952, select = c(year, country))

subset(gDat, subset = lifeExp < 32, select = c(continent))
highMortality = subset(gDat, subset = lifeExp < 32, select = c(continent))
table(highMortality)
summary(highMortality)

plot(lifeExp ~ year, gDat, subset = country == "Cambodia")
lm(lifeExp ~ year, gDat, subset = country == "Cambodia")

mean(gDat$lifeExp)
with (gDat, mean(lifeExp))


with(subset(gDat, country == "Cambodia"), cor(lifeExp, gdpPercap))


