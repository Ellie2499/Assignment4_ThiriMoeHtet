library(data.table)
DT1<-data.table(z=letters[1:10],w=rnorm(10), x=rep(c('a','b','c','d',NA),each=2),y=sample(1:10));DT1
DT2<-data.table(z=letters[1:10],x=rnorm(10),y=rep(c('a','b',NA,NA,'e'),each=2));DT2
setkey(DT1,z);setkey(DT2,z)
DT<-merge(DT1,DT2)
DT3<-DT[complete.cases(DT)];DT3
tables()