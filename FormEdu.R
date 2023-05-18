#setup packages
library(summarytools)

setwd("~/Documents/econed")

#read in csv 
labsup <- read.csv("labsup.csv")

#inflate to 2020 dollars 
labsup$CPI <- 0.4
labsup$labinc <- labsup$labinc/labsup$CPI
labsup$nonmomi <- labsup$nonmomi/labsup$CPI

#convert wage to annual earnings 
labsup$earnings <- labsup$labinc*labsup$hours*labsup$weeks
descr(labsup$earnings)

labsup$logearnings <- log(labsup$earnings+0.00001)

#Q1a
#How many moms worked?
freq(labsup$worked)

#years of education?
descr(labsup$educ)

#moms wages
descr(labsup$earnings)

#subset the data for working moms only 
workingmoms <- labsup[which(labsup$worked == 1),]

#scatter plot, education, and earnings
plot(workingmoms$educ, workingmoms$earnings)
plot(workingmoms$educ, workingmoms$agefstm)

cor(workingmoms$educ, workingmoms$earnings)
cor(workingmoms$educ, workingmoms$agefstm)

#describe the variables: family size
descr(workingmoms$kidcount)

#plot the distribution of kidcount
kids <- density(workingmoms$kidcount)
plot(kids)

#the frequency of kidcount
frequency(workingmoms$kidcount)

#plot the distribution of agefstm 
agefstm <- density(workingmoms$agefstm)
plot(agefstm)

#the frequency of agefstm
frequency(workingmoms$agefstm)

#regressions
model0 <- lm(labsup$logearnings ~ labsup$educ + labsup$worked)
summary(model0)

model1 <- lm(labsup$kidcount ~ labsup$educ)
summary(model1)

model2 <- lm(labsup$kidcount ~ labsup$educ + labsup$agefstm)
summary(model2)

model3 <- lm(labsup$kidcount ~ labsup$educ + labsup$agefstm + labsup$worked)
summary(model3)


