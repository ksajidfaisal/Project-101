
# load Packages
library(foreign)
library(stargazer)

#Read in wooldrige data
wage1 <-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

#Calculating the correlation
cor(wage1$wage,wage1$educ)
#^positive correlation

#whether the correlation is statistically significant
cor.test(wage1$wage,wage1$educ)

#calculate a cross tabulation
table(wage1$married,wage1$smsa)
#labels on the table axis
table(wage1$married,wage1$smsa,dnn = c("Married","SMSA"))

#check difference of means of two variable(t-test)
t.test(wage1$exper-wage1$tenure)

#Aggregate command Get average wage by marital status
aggregate(wage ~ married,data=wage1,FUN=mean)
#and SMSA
aggregate(wage ~ married+smsa,data=wage1,FUN=mean)


