

taulaCLIMSENSE<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/LATAULABIO_GA3.csv", header = T, sep = ";")
taulaCLIMVAR<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/LATAULABIO_ST_GGPLOT.csv", header = T, sep = ";")
par(mfrow=c(3,3))
library(ggplot2)
ggplot(taulaCLIMSENSE, aes(x=variable, y=valor)) + geom_boxplot() + stat_summary(fun=mean, geom="point", shape=4, size=3)
ggplot(taulaCLIMVAR, aes(x=variable, y=valor)) + geom_boxplot() + stat_summary(fun=mean, geom="point", shape=4, size=3)
