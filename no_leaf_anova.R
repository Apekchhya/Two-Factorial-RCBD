getwd()
setwd("D:\\learning materials\\R-online")
data=read.csv("master.file.upa.csv")
getwd()
data$Replication<-factor(data$Replication)
data$Plot<-factor(data$Plot)
data$Trt.No<-factor(data$Trt.No)
data$N.dose<-factor(data$N.dose)
data$B.dose<-factor(data$B.dose)
data$Treatment<-factor(data$Treatment)

library(gvlma)
attach(data)
colnames(data)
attach(data)
gvlma(lm(data$T_yld~Replication+N.dose+B.dose+N.dose:B.dose))
library(agricolae)
colnames(data)

data$Yld_per_ha<-(data$Root.yld.per.plot*10000)/1.4
anova<-anova(lm(T_yld~Replication+N.dose+B.dose+N.dose:B.dose))
data$Yld_per_ha
anova
data$Root.yld.per.plot
dmrt<-with(data,duncan.test(T_yld,N.dose:B.dose,30,anova$`Mean Sq`[5],group=TRUE))
dmrt
anova$`Mean Sq`[5]
sem<-sqrt(dmrt$statistics[1]/(3))

sem

write.csv(dmrt$groups,"C:\\users\\apeks\\Desktop\\anova.csv")

cd<-sem*abs(qt(0.05/2,30))*sqrt(2)
cd
dmrt$statistics[1]
dmrt$mean[1]
data$yld_per_ha
colnames(data)
