library(reshape2)
library(ggplot2)
library(dplyr) 
getwd()
setwd("D:\\learning materials\\R-online")
data<-read.csv("master.file.upa.csv",na.strings = (""))
colnames(data)

data$Replication<-factor(data$Replication)
data$Plot<-factor(data$Plot)
data$Trt.No<-factor(data$Trt.No)
data$N.dose<-factor(data$N.dose)
data$B.dose<-factor(data$B.dose)
data$Treatment<-factor(data$Treatment)

a<-mean(data[data$Treatment=="N0B0","No.leaf.27.das"],na.rm=TRUE)
b<-mean(data[data$Treatment=="N0B1","No.leaf.27.das"],na.rm=TRUE)
c<-mean(data[data$Treatment=="N0B2","No.leaf.27.das"],na.rm=TRUE)
d<-mean(data[data$Treatment=="N0B3","No.leaf.27.das"],na.rm=TRUE)

e<-mean(data[data$Treatment=="N1B0","No.leaf.27.das"],na.rm=TRUE)
f<-mean(data[data$Treatment=="N1B1","No.leaf.27.das"],na.rm=TRUE)
g<-mean(data[data$Treatment=="N1B2","No.leaf.27.das"],na.rm=TRUE)
h<-mean(data[data$Treatment=="N1B3","No.leaf.27.das"],na.rm=TRUE)

i<-mean(data[data$Treatment=="N2B0","No.leaf.27.das"],na.rm=TRUE)
j<-mean(data[data$Treatment=="N2B1","No.leaf.27.das"],na.rm=TRUE)
k<-mean(data[data$Treatment=="N2B2","No.leaf.27.das"],na.rm=TRUE)
l<-mean(data[data$Treatment=="N2B3","No.leaf.27.das"],na.rm=TRUE)

m<-mean(data[data$Treatment=="N3B0","No.leaf.27.das"],na.rm=TRUE)
n<-mean(data[data$Treatment=="N3B1","No.leaf.27.das"],na.rm=TRUE)
o<-mean(data[data$Treatment=="N3B2","No.leaf.27.das"],na.rm=TRUE)
p<-mean(data[data$Treatment=="N3B3","No.leaf.27.das"],na.rm=TRUE)




a1<-mean(data[data$Treatment=="N0B0","No.leaf.34das"],na.rm=TRUE)
b1<-mean(data[data$Treatment=="N0B1","No.leaf.34das"],na.rm=TRUE)
c1<-mean(data[data$Treatment=="N0B2","No.leaf.34das"],na.rm=TRUE)
d1<-mean(data[data$Treatment=="N0B3","No.leaf.34das"],na.rm=TRUE)

e1<-mean(data[data$Treatment=="N1B0","No.leaf.34das"],na.rm=TRUE)
f1<-mean(data[data$Treatment=="N1B1","No.leaf.34das"],na.rm=TRUE)
g1<-mean(data[data$Treatment=="N1B2","No.leaf.34das"],na.rm=TRUE)
h1<-mean(data[data$Treatment=="N1B3","No.leaf.34das"],na.rm=TRUE)

i1<-mean(data[data$Treatment=="N2B0","No.leaf.34das"],na.rm=TRUE)
j1<-mean(data[data$Treatment=="N2B1","No.leaf.34das"],na.rm=TRUE)
k1<-mean(data[data$Treatment=="N2B2","No.leaf.34das"],na.rm=TRUE)
l1<-mean(data[data$Treatment=="N2B3","No.leaf.34das"],na.rm=TRUE)

m1<-mean(data[data$Treatment=="N3B0","No.leaf.34das"],na.rm=TRUE)
n1<-mean(data[data$Treatment=="N3B1","No.leaf.34das"],na.rm=TRUE)
o1<-mean(data[data$Treatment=="N3B2","No.leaf.34das"],na.rm=TRUE)
p1<-mean(data[data$Treatment=="N3B3","No.leaf.34das"],na.rm=TRUE)


a2<-mean(data[data$Treatment=="N0B0","No.leaf.41das"],na.rm=TRUE)
b2<-mean(data[data$Treatment=="N0B1","No.leaf.41das"],na.rm=TRUE)
c2<-mean(data[data$Treatment=="N0B2","No.leaf.41das"],na.rm=TRUE)
d2<-mean(data[data$Treatment=="N0B3","No.leaf.41das"],na.rm=TRUE)

e2<-mean(data[data$Treatment=="N1B0","No.leaf.41das"],na.rm=TRUE)
f2<-mean(data[data$Treatment=="N1B1","No.leaf.41das"],na.rm=TRUE)
g2<-mean(data[data$Treatment=="N1B2","No.leaf.41das"],na.rm=TRUE)
h2<-mean(data[data$Treatment=="N1B3","No.leaf.41das"],na.rm=TRUE)

i2<-mean(data[data$Treatment=="N2B0","No.leaf.41das"],na.rm=TRUE)
j2<-mean(data[data$Treatment=="N2B1","No.leaf.41das"],na.rm=TRUE)
k2<-mean(data[data$Treatment=="N2B2","No.leaf.41das"],na.rm=TRUE)
l2<-mean(data[data$Treatment=="N2B3","No.leaf.41das"],na.rm=TRUE)

m2<-mean(data[data$Treatment=="N3B0","No.leaf.41das"],na.rm=TRUE)
n2<-mean(data[data$Treatment=="N3B1","No.leaf.41das"],na.rm=TRUE)
o2<-mean(data[data$Treatment=="N3B2","No.leaf.41das"],na.rm=TRUE)
p2<-mean(data[data$Treatment=="N3B3","No.leaf.41das"],na.rm=TRUE)


a3<-mean(data[data$Treatment=="N0B0","No.leaf.48das"],na.rm=TRUE)
b3<-mean(data[data$Treatment=="N0B1","No.leaf.48das"],na.rm=TRUE)
c3<-mean(data[data$Treatment=="N0B2","No.leaf.48das"],na.rm=TRUE)
d3<-mean(data[data$Treatment=="N0B3","No.leaf.48das"],na.rm=TRUE)

e3<-mean(data[data$Treatment=="N1B0","No.leaf.48das"],na.rm=TRUE)
f3<-mean(data[data$Treatment=="N1B1","No.leaf.48das"],na.rm=TRUE)
g3<-mean(data[data$Treatment=="N1B2","No.leaf.48das"],na.rm=TRUE)
h3<-mean(data[data$Treatment=="N1B3","No.leaf.48das"],na.rm=TRUE)

i3<-mean(data[data$Treatment=="N2B0","No.leaf.48das"],na.rm=TRUE)
j3<-mean(data[data$Treatment=="N2B1","No.leaf.48das"],na.rm=TRUE)
k3<-mean(data[data$Treatment=="N2B2","No.leaf.48das"],na.rm=TRUE)
l3<-mean(data[data$Treatment=="N2B3","No.leaf.48das"],na.rm=TRUE)

m3<-mean(data[data$Treatment=="N3B0","No.leaf.48das"],na.rm=TRUE)
n3<-mean(data[data$Treatment=="N3B1","No.leaf.48das"],na.rm=TRUE)
o3<-mean(data[data$Treatment=="N3B2","No.leaf.48das"],na.rm=TRUE)
p3<-mean(data[data$Treatment=="N3B3","No.leaf.48das"],na.rm=TRUE)


a4<-mean(data[data$Treatment=="N0B0","No.leaf.55das"],na.rm=TRUE)
b4<-mean(data[data$Treatment=="N0B1","No.leaf.55das"],na.rm=TRUE)
c4<-mean(data[data$Treatment=="N0B2","No.leaf.55das"],na.rm=TRUE)
d4<-mean(data[data$Treatment=="N0B3","No.leaf.55das"],na.rm=TRUE)

e4<-mean(data[data$Treatment=="N1B0","No.leaf.55das"],na.rm=TRUE)
f4<-mean(data[data$Treatment=="N1B1","No.leaf.55das"],na.rm=TRUE)
g4<-mean(data[data$Treatment=="N1B2","No.leaf.55das"],na.rm=TRUE)
h4<-mean(data[data$Treatment=="N1B3","No.leaf.55das"],na.rm=TRUE)

i4<-mean(data[data$Treatment=="N2B0","No.leaf.55das"],na.rm=TRUE)
j4<-mean(data[data$Treatment=="N2B1","No.leaf.55das"],na.rm=TRUE)
k4<-mean(data[data$Treatment=="N2B2","No.leaf.55das"],na.rm=TRUE)
l4<-mean(data[data$Treatment=="N2B3","No.leaf.55das"],na.rm=TRUE)

m4<-mean(data[data$Treatment=="N3B0","No.leaf.55das"],na.rm=TRUE)
n4<-mean(data[data$Treatment=="N3B1","No.leaf.55das"],na.rm=TRUE)
o4<-mean(data[data$Treatment=="N3B2","No.leaf.55das"],na.rm=TRUE)
p4<-mean(data[data$Treatment=="N3B3","No.leaf.55das"],na.rm=TRUE)


a5<-mean(data[data$Treatment=="N0B0","No.leaf62das"],na.rm=TRUE)
b5<-mean(data[data$Treatment=="N0B1","No.leaf62das"],na.rm=TRUE)
c5<-mean(data[data$Treatment=="N0B2","No.leaf62das"],na.rm=TRUE)
d5<-mean(data[data$Treatment=="N0B3","No.leaf62das"],na.rm=TRUE)

e5<-mean(data[data$Treatment=="N1B0","No.leaf62das"],na.rm=TRUE)
f5<-mean(data[data$Treatment=="N1B1","No.leaf62das"],na.rm=TRUE)
g5<-mean(data[data$Treatment=="N1B2","No.leaf62das"],na.rm=TRUE)
h5<-mean(data[data$Treatment=="N1B3","No.leaf62das"],na.rm=TRUE)

i5<-mean(data[data$Treatment=="N2B0","No.leaf62das"],na.rm=TRUE)
j5<-mean(data[data$Treatment=="N2B1","No.leaf62das"],na.rm=TRUE)
k5<-mean(data[data$Treatment=="N2B2","No.leaf62das"],na.rm=TRUE)
l5<-mean(data[data$Treatment=="N2B3","No.leaf62das"],na.rm=TRUE)

m5<-mean(data[data$Treatment=="N3B0","No.leaf62das"],na.rm=TRUE)
n5<-mean(data[data$Treatment=="N3B1","No.leaf62das"],na.rm=TRUE)
o5<-mean(data[data$Treatment=="N3B2","No.leaf62das"],na.rm=TRUE)
p5<-mean(data[data$Treatment=="N3B3","No.leaf62das"],na.rm=TRUE)


plotdat<-data.frame(Nitrogen=c("N0","N0","N0","N0","N1","N1","N1","N1","N2","N2","N2","N2","N3","N3","N3","N3"),
                    Biochar=c("B0","B1","B2","B3","B0","B1","B2","B3","B0","B1","B2","B3","B0","B1","B2","B3"),
                    das_27=c(a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p),
                    das_34=c(a1,b1,c1,d1,e1,f1,g1,h1,i1,j1,k1,l1,m1,n1,o1,p1),
                    das_41=c(a2,b2,c2,d2,e2,f2,g2,h2,i2,j2,k2,l2,m2,n2,o2,p2),
                    das_48=c(a3,b3,c3,d3,e3,f3,g3,h3,i3,j3,k3,l3,m3,n3,o3,p3),
                    das_55=c(a4,b4,c4,d4,e4,f4,g4,h4,i4,j4,k4,l4,m4,n4,o4,p4),
                    das_62=c(a5,b5,c5,d5,e5,f5,g5,h5,i5,j5,k5,l5,m5,n5,o5,p5),
                    trt=c("N0B0","N0B1","N0B2","N0B3","N1B0","N1B1","N1B2","N1B3","N2B0","N2B1","N2B2","N2B3","N3B0","N3B1","N3B2","N3B3"))

new_df<-data.frame(treat=c(rep("N0B0",6),rep("N0B1",6),rep("N0B2",6),rep("N0B3",6),rep("N1B0",6),rep("N1B1",6),rep("N1B2",6),rep("N1B3",6),rep("N2B0",6),rep("N2B1",6),rep("N2B2",6),rep("N2B3",6),rep("N3B0",6),rep("N3B1",6),rep("N3B2",6),rep("N3B3",6)),
                   das=rep(c(27,34,41,48,55,62),16),
                   no_leaf=c(plotdat$das_27[1],plotdat$das_34[1],plotdat$das_41[1],plotdat$das_48[1],plotdat$das_55[1],plotdat$das_62[1],
                             plotdat$das_27[2],plotdat$das_34[2],plotdat$das_41[2],plotdat$das_48[2],plotdat$das_55[2],plotdat$das_62[2],
                             plotdat$das_27[3],plotdat$das_34[3],plotdat$das_41[3],plotdat$das_48[3],plotdat$das_55[3],plotdat$das_62[3],
                             plotdat$das_27[4],plotdat$das_34[4],plotdat$das_41[4],plotdat$das_48[4],plotdat$das_55[4],plotdat$das_62[4],
                             plotdat$das_27[5],plotdat$das_34[5],plotdat$das_41[5],plotdat$das_48[5],plotdat$das_55[5],plotdat$das_62[5],
                             plotdat$das_27[6],plotdat$das_34[6],plotdat$das_41[6],plotdat$das_48[6],plotdat$das_55[6],plotdat$das_62[6],
                             plotdat$das_27[7],plotdat$das_34[7],plotdat$das_41[7],plotdat$das_48[7],plotdat$das_55[7],plotdat$das_62[7],
                             plotdat$das_27[8],plotdat$das_34[8],plotdat$das_41[8],plotdat$das_48[8],plotdat$das_55[8],plotdat$das_62[8],
                             plotdat$das_27[9],plotdat$das_34[9],plotdat$das_41[9],plotdat$das_48[9],plotdat$das_55[9],plotdat$das_62[9],
                             plotdat$das_27[10],plotdat$das_34[10],plotdat$das_41[10],plotdat$das_48[10],plotdat$das_55[10],plotdat$das_62[10],
                             plotdat$das_27[11],plotdat$das_34[11],plotdat$das_41[11],plotdat$das_48[11],plotdat$das_55[11],plotdat$das_62[11],
                             plotdat$das_27[12],plotdat$das_34[12],plotdat$das_41[12],plotdat$das_48[12],plotdat$das_55[12],plotdat$das_62[12],
                             plotdat$das_27[13],plotdat$das_34[13],plotdat$das_41[13],plotdat$das_48[13],plotdat$das_55[13],plotdat$das_62[13],
                             plotdat$das_27[14],plotdat$das_34[14],plotdat$das_41[14],plotdat$das_48[14],plotdat$das_55[14],plotdat$das_62[14],
                             plotdat$das_27[15],plotdat$das_34[15],plotdat$das_41[15],plotdat$das_48[15],plotdat$das_55[15],plotdat$das_62[15],
                             plotdat$das_27[16],plotdat$das_34[16],plotdat$das_41[16],plotdat$das_48[16],plotdat$das_55[16],plotdat$das_62[16]))




new_df
str(new_df)
new_df$treat<-as.factor(new_df$treat)
new_df$das<-as.factor(new_df$das)
summary(new_df$das)
leaf<-new_df$no_leaf
leaf
tt<-new_df$treat
dd<-new_df$das
dd
str(new_df)

ggplot(data=new_df,aes(x=tt,y=leaf,colour=dd))+
  scale_fill_manual(values = c("red","blue","orange2","green","magenta","cyan"))+
  ylab("Number of Leaves")+xlab("Treatment")+
  coord_cartesian(ylim=c(0,25))+
  geom_line(data=scaled_df,aes(x=tt,y=leaf,group=dd,colour=dd),size=1.3)+
  theme_bw()+
  scale_colour_manual(values =c("red","blue","orange2","green","magenta","cyan"))+
  theme(axis.title.x= element_text(color="Dark Blue",size=13),
        axis.title.y =element_text(color="Dark Blue",size=13),
        axis.text.x = element_text(angle=45,size=9,hjust=1),
        axis.text.y=element_text(size=10),
        legend.title = element_text(colour="Dark Blue",size=13))+
  labs(color=expression("DAS"))+
  scale_color_discrete(name="DAS")

  
