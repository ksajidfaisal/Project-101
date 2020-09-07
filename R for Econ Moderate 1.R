library(foreign)
library(stargazer)
#Read in wooldrige data
wage1 <-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

model3<-lm(wage~educ+tenure+female+married,data = wage1)
stargazer(model3,type='text')
#using I() Function to put in the square of a variable
model4<-lm(wage~educ+I(educ^2)+tenure+female+married,data = wage1)
stargazer(model4,type='text')
#interactions, the effect  of an additional year of education
# is the same for a man or a women
# y= alpha+ beta1*educ+ beta2*female +beta3*female*educ
model5<-lm(wage~tenure+female*educ+married,data = wage1)
stargazer(model5,type='text')
#just the interaction term
model6<-lm(wage~tenure+female:educ+married,data = wage1)
stargazer(model6,type='text')
#Using Log wage instead of wage for regression
model7<-lm(log(wage)~tenure+female*educ+married,data = wage1)
stargazer(model7,type='text')

#including dummies/buffer/control
#dummies are a standard way of using 
#factor variables in regression
model8<-lm(wage~factor(educ)+tenure+female+married,data = wage1)
stargazer(model8,type='text')

#Regression with lots of control variables
#basically, include everything that reduces 
#omitted variable bias and nothing else
regdata<- subset(wage1,select =c("wage","educ","exper","tenure"
                                 ,"nonwhite","female","married","numdep") )

model9<-lm(wage~.,data=regdata)
stargazer(model9,type="text")

#using selected columns instead of typing it out
regdata<-wage1[,1:8]

model9<-lm(wage~.,data=regdata)
stargazer(model9,type="text")

#interaction being education and gender
model10<-lm(wage~educ*female+.,data=regdata)
stargazer(model10,type="text")

#This will work with anything that has regression formula not only OLS






