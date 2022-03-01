getwd()
setwd("D:\\learning materials\\R-online")
getwd()
upa<-read.csv("master.file.upa.csv")
row.names(upa)
colnames(upa)
str(upa)
upa$Plot<-as.character(upa$Plot)
upa$Trt.No<-as.character(upa$Trt.No)
upa$Treatment<-as.factor(upa$Treatment)
upa$Replication<-factor(upa$Replication)
upa$N.dose<-factor(upa$N.dose)
upa$B.dose<-factor(upa$B.dose)

library(dplyr)
df<-upa%>%
  select(N.dose,B.dose,Treatment,P.height.cm.27das,P.height.cm.34das,P.height.cm.41das,P.height.cm.48das,P.height.cm.55das,P.height.cm.62das)
str(df)

write.csv(df,"C:\\users\\apeks\\Desktop\\Plant_height.csv")
library(tidyr)
df_tidy<-gather(data=df,key=DAS,value=Plant_height,-Treatment,-B.dose,-N.dose)
df_tidy
library(ggplot2)
df_tidy$Treatment<-as.factor(df_tidy$Treatment)
str(df_tidy)
install.packages("plyr")
library(plyr)

das_27<-sapply(split(df$P.height.cm.27das,df$Treatment),mean)
das_34<-sapply(split(df$P.height.cm.34das,df$Treatment),mean)
df2
das_41<-sapply(split(df$P.height.cm.41das,df$Treatment),mean)
das_48<-sapply(split(df$P.height.cm.48das,df$Treatment),mean)
das_55<-sapply(split(df$P.height.cm.55das,df$Treatment),mean)
das_62<-sapply(split(df$P.height.cm.62das,df$Treatment),mean)

df1<-data.frame(das_27,das_34,das_41,das_48,das_55,das_62)
df1$N.dose<-df$N.dose[1:16]
df1$B.dose<-df$B.dose[1:16]
df1              
df1$Treatment<-rownames(df1)
df1
rownames(df1)<-NULL
df1
df1<-df1[,c(7,8,9,1,2,3,4,5,6)]
df1
df_tidy<-gather(data=df1,key=DAS,value=Plant_height,-Treatment,-B.dose,-N.dose)
df_tidy
write.csv(df_tidy,"C:\\users\\apeks\\Desktop\\Plant_height.csv")

library(ggplot2)

ggplot(data=df_tidy,aes(x=Treatment,y=Plant_height,colour=DAS))+
  scale_fill_manual(values = c("red","blue","orange2","green","magenta","cyan"))+
  ylab("Plant Height")+xlab("Treatment")+
  coord_cartesian(ylim=c(10,40))+ggtitle("Plant Height")+
  geom_line(data=df_tidy,aes(x=Treatment,y=Plant_height,group=DAS,colour=DAS),size=1.3)+
  theme_bw()+
  scale_colour_manual(values =c("red","blue","orange2","green","magenta","cyan"))+
  theme(axis.title.x= element_text(color="Dark Blue",size=20),
        axis.title.y =element_text(color="Dark Blue",size=20),
        axis.text.x = element_text(angle=45,size=18,hjust=1),
        axis.text.y=element_text(size=20),
        legend.title = element_text(colour="Dark Blue",size=20),
        legend.text = element_text(size=18),
        plot.title = element_text(colour = "Dark Blue",hjust = 0.4,size=30))+
  labs(color=expression("DAS"))+
  scale_color_discrete(name="DAS")
