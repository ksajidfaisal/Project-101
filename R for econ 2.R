#BUILDING VECTORS And playing 
#around

a<-c(5,7,1)
a[1]

a[2]
a[1:3]
a[c(1,2)]
a[c(TRUE,TRUE,FALSE)]
a[a>3]

#second vector
b<-c(8,9,6)

#create Matrix
x<-cbind(a,b)

# look at x
x[3,2]

# Get rows where a is less than 4
x[,1]<4
x[x[,1]<4,]

#Data Frame
#Turn x into data frame
x<-as.data.frame(x)

x[,1]<4
x[x[,1]<4,]
x$a<4

#second element of a
x$a[2]

x$c<-c("hello","goodbye","farewell")

#give back farewell
x$c[3]
#look at first row of data
x[1,]
#look at top of data
head(x)

#Bring in new data
read.csv('FL_insurance_sample.csv')
# to store the data
insurance_data<-read.csv('FL_insurance_sample.csv')

#Look at third row of eq_site_limit
insurance_data$eq_site_limit[3]

#SHOW me clay county
insurance_data[ insurance_data$county=="CLAY COUNTY",]

#head of data
head(insurance_data)

#change name of variables
names(insurance_data)
names(insurance_data)[2] <- "state codes"
names(insurance_data)

