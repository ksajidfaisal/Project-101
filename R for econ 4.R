library(foreign)
library(stargazer)
wage1 <-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

View(wage1)

#Summary Statistics
#mean
mean(wage1$wage)
#standard deviation
sd(wage1$wage)

#summary
summary(wage1$wage)
fivenum(wage1$wage)
stargazer(wage1$wage)
subset(wage1,select=c(wage))
stargazer(subset(wage1,select=c(wage)),type = 'text')
stargazer(subset(wage1,select=c(wage,tenure,female)),type = 'text')
stargazer(subset(wage1,female==1,select=c(wage)),type = 'html',out="womenstats.html")

#Look at all the level of education (general distribution)
table(wage1$educ)

#t-test checking the mean of a variable
t.test(wage1$wage-6)


