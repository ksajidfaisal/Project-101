
# load Packages
library(foreign)
library(stargazer)

#Read in wooldrige data
wage1 <-read.dta("http://fmwww.bc.edu/ec-p/data/wooldridge/wage1.dta")

#Scatter Plot of wage against education
plot(wage1$educ,wage1$wage)
#with labels on the axis
plot(wage1$educ,wage1$wage, xlab="education",
     ylab = "wage",main ="Relationship of Wage 
     and Education" )
#showing line in average wage
abline(mean(wage1$wage),0)
 
#histogram for Education
hist(wage1$wage)
#density plot
plot(density(wage1$educ))

#barplot, similar table
barplot(table(wage1$educ))
barplot(table(wage1$married))

#stacked barplot
barplot(table(wage1$married,wage1$smsa))

#line plot
plot(aggregate(wage~educ,data = wage1,FUN = mean),type="l")
 


