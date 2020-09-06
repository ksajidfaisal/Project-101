library(foreign)
library(stargazer)
#Read in wooldrige data
wage1 <-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

#creating a regression object
model1<-lm(wage~educ,data = wage1)
model2<-lm(wage~tenure,data = wage1)
summary(model1)
#nicer table with stargazer
stargazer(model1,type = 'text')
#Feed out table to file
stargazer(model1,type = 'html',out = "model1.html")
#multiple models at once
stargazer(model1,model2,type = 'html',out = "model2.html") 

#regress on multiple variables at once
model3<-lm(wage~educ+tenure+female+married,data = wage1)
stargazer(model3,type='html',out="Model 3.html")

#same model but without a constant
model4<- lm(wage~-1+educ+tenure+female+married,data = wage1)
stargazer(model4,type='html',out="Model 4.html")
