library(modeest)
 
migration<-read.csv("D:\\migration.csv")

View(migration)

#mean
diamin<-mean(migration$estimate)
print(diamin)
diamax<-mean(migration$estimate)
print(diamax)
avgvelr<-mean(migration$estimate)
print(avgvelr)
avddist<-mean(migration$estimate)
print(avddist)

#median
middist<-median(migration$standard_error)
print(middist)

#standard deviation
sdofvelocity<-sd(migration$estimate)
print(sdofvelocity)

#variance
varofvelocity<-var(migration$estimate)
print(varofvelocity)

#range
range<-max(migration$estimate)-min(migration$estimate)
print(range)



library(moments)
#kurtosis
kurtosis(migration$estimate)
#skewness
skewness(migration$estimate)