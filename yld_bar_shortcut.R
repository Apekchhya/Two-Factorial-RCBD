
#For viewing and setting working directory

getwd()
setwd("D://Apekshya//learning materials//R-online")
getwd()

#csv file reading
upa<-read.csv("yield analysis.csv")
row.names(upa)
colnames(upa)

#getting basic structure of data
str(upa)

#changing data types
upa$Plot<-as.character(upa$Plot)
upa$Trt.No<-as.character(upa$Trt.No)
upa$Replication<-factor(upa$Replication)
upa$N.dose<-factor(upa$N.dose)
upa$B.dose<-factor(upa$B.dose)
upa$ton.ha<-upa$Root.yld.per.plot.kg*10/1.4
upa$ton.ha

#loading library to check global Validation/assumptions of Linear Models
library(gvlma)

#use attach() function to access the variables present in the data framework without calling the data frame.
attach(upa)

#loading library for ANOVA operation
library(agricolae)

#cheking assumption of linear model.
model<-gvlma(lm(ton.ha~Replication+N.dose+B.dose+N.dose:B.dose))

#calculating anova table
an<-anova(model)

#calculating dmrt
dmrt<-with(upa,duncan.test(ton.ha,N.dose:B.dose,30,an$`Mean Sq`[5],group=TRUE))
dmrt
dmrt$means[1]
mn<-data.frame(dmrt$means[1])
mn
str(mn)
mn$names<-rownames(mn)
rownames(mn)<-NULL
mn
df<-data.frame(do.call("rbind",strsplit(as.character(mn$names),":",fixed = TRUE)))
df
final_df<-data.frame(df,mn$ton.ha,dmrt$means[2]/sqrt(3))
final_df
rownames(final_df)<-NULL
colnames(final_df)<-c("N.dose","B.dose","mean","se")
final_df

#plotting a graph
library(ggplot2)
upab<-ggplot(data=final_df,aes(x=N.dose, y = mean, fill=B.dose))
upabar<-upab+geom_bar(stat="identity",position = position_dodge())+
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se),width=.2,
                position=position_dodge(.9))+
  labs(x="Nitrogen dose", y="Root Yield (ton per hactare)")+
  scale_fill_brewer(palette="Paired")+theme_minimal()
upabar  
