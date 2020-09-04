#bring in new data
insurdata<-read.csv('FL_insurance_sample.csv')
# creat a new variable
insurdata$Newpoint_granularity<-insurdata$point_granularity+1

#Turn county into character variable(manipulating variables)
insurdata$county<-as.character(insurdata$county)

# looking at one variable (be specific with the wording)
insurdata[insurdata$county =="NASSAU COUNTY",]

#one variable but with subsets(using pig data set as it is easier)
subset(insurdata,county=="NASSAU COUNTY")

#Just NASSAU COUNTY with eq site limit greater than 300000
subset(insurdata,county=="NASSAU COUNTY" & eq_site_limit>300000)

#Just NASSAU COUNTY selecting columns the coulumns 
subset(insurdata,county=="NASSAU COUNTY",select = c(policyID,statecode,county))
subset(insurdata,county=="NASSAU COUNTY",select = -c(county))

#storing the NASSAU COUNTY data by itself
NASSAUdata<-subset(insurdata,county=="NASSAU COUNTY",select = c(policyID,statecode,county))

#geting rid of the State code in the main data and make it stick
insurdata<-subset(insurdata,select = -c(statecode) )

# new variable equal to 1
insurdata$one<-1





 







