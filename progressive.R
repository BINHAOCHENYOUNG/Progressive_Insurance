#change the working directory
setwd ("C:/Users/Neeraj Arora/Documents")
#setwd('C:/Users/Neeraj Arora/Box/815/Lectures/experimentation/progressive')
#read datafile
dat = read.csv("progressive_revised.csv",header=TRUE)
dim(dat)
#print(dat)
attach(dat)
table(A)
table(B)
summary(Rate)
### Analyses: Full data###
reg=lm(Rate~A+B+C+D+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z+AA,data=dat)
summary(reg)

reg=lm(Rate~D+L+N+U,data=dat)
summary(reg)
### Conversion rates for each segment###
dat$Rate_1=Renewed_1/Eligible_1
dat$Rate_2=Renewed_2/Eligible_2
dat$Rate_3=Renewed_3/Eligible_3
dat$Rate_4=Renewed_4/Eligible_4
### Analyses: By segment###
attach(dat)
summary(Rate_1)
summary(Rate_2)
summary(Rate_3)
summary(Rate_4)
#segment 1
reg1=lm(Rate_1~A+B+C+D+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+Z+AA,data=dat)
summary(reg1)

reg1=lm(Rate_1~L,data=dat)
summary(reg1)
#segment 2
reg2=lm(Rate_2~A+B+C+D+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+X+Z+AA,data=dat)
summary(reg2)

reg2=lm(Rate_2~K+M+N+Q,data=dat)
summary(reg2)
#segment 3
reg3=lm(Rate_3~A+B+C+D+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+X+Z+AA,data=dat)
summary(reg3)

reg3=lm(Rate_3~D+U,data=dat)
summary(reg3)
#segment 4
reg4=lm(Rate_4~A+B+C+D+F+G+H+I+J+K+L+M+N+O+P+Q+R+S+T+U+V+W+X+Y+X+Z+AA,data=dat)
summary(reg4)

reg4=lm(Rate_4~L+Y,data=dat)
summary(reg4)
