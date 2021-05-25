

########################BACKGROUND SAMPLES PER DÈCADES###########################

library(raster)

####################################1961_1970####################################

c1<-raster("D:/Bioclimatiques_rcp45/1961_1970/aridityIndexThornthwaite.tif")
c2<-raster("D:/Bioclimatiques_rcp45/1961_1970/bio9.tif")
c3<-raster("D:/Bioclimatiques_rcp45/1961_1970/bio15.tif")
c4<-raster("D:/Bioclimatiques_rcp45/1961_1970/bio2.tif")
c5<-raster("D:/Bioclimatiques_rcp45/1961_1970/continentality.tif")
c6<-raster("D:/Bioclimatiques_rcp45/1961_1970/monthCountByTemp10.tif")
c7<-raster("D:/Bioclimatiques_rcp45/1961_1970/bio13.tif")

c1961_1970<-stack(c1, c2, c3, c4, c5, c6, c7)

punts<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/entrada_BG/1961_1970.csv")
punts<-subset(punts, select=-X)
prova<-extract(x=c1961_1970, punts, method="bilinear", df=T)
write.csv(prova, "C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/sortida_BG/1961_1970BGextract.csv", row.names = F)
prova1<-merge(punts, prova)

yy<-vector(2)

prova2 <- prova1[-c(2624, 6885376), ]

prova4z<-sp::merge(punts, prova)


####################################1971_1980####################################

c1<-raster("D:/Bioclimatiques_rcp45/1971_1980/aridityIndexThornthwaite.tif")
c2<-raster("D:/Bioclimatiques_rcp45/1971_1980/bio9.tif")
c3<-raster("D:/Bioclimatiques_rcp45/1971_1980/bio15.tif")
c4<-raster("D:/Bioclimatiques_rcp45/1971_1980/bio2.tif")
c5<-raster("D:/Bioclimatiques_rcp45/1971_1980/continentality.tif")
c6<-raster("D:/Bioclimatiques_rcp45/1971_1980/monthCountByTemp10.tif")
c7<-raster("D:/Bioclimatiques_rcp45/1971_1980/bio13.tif")

c1971_1980<-stack(c1, c2, c3, c4, c5, c6, c7)

punts<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/entrada_BG/1971_1980.csv")
punts<-subset(punts, select=-X)
prova<-extract(x=c1971_1980, punts, method="bilinear", df=T)
write.csv(prova, "C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/sortida_BG/1971_1980BGextract.csv", row.names = F)

####################################1981_1990####################################

c1<-raster("D:/Bioclimatiques_rcp45/1981_1990/aridityIndexThornthwaite.tif")
c2<-raster("D:/Bioclimatiques_rcp45/1981_1990/bio9.tif")
c3<-raster("D:/Bioclimatiques_rcp45/1981_1990/bio15.tif")
c4<-raster("D:/Bioclimatiques_rcp45/1981_1990/bio2.tif")
c5<-raster("D:/Bioclimatiques_rcp45/1981_1990/continentality.tif")
c6<-raster("D:/Bioclimatiques_rcp45/1981_1990/monthCountByTemp10.tif")
c7<-raster("D:/Bioclimatiques_rcp45/1981_1990/bio13.tif")

c1981_1990<-stack(c1, c2, c3, c4, c5, c6, c7)

punts<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/entrada_BG/1981_1990.csv")
punts<-subset(punts, select=-X)
prova<-extract(x=c1981_1990, punts, method="bilinear", df=T)
write.csv(prova, "C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/sortida_BG/1981_1990BGextract.csv", row.names = F)

####################################1991_2000####################################

c1<-raster("D:/Bioclimatiques_rcp45/1991_2000/aridityIndexThornthwaite.tif")
c2<-raster("D:/Bioclimatiques_rcp45/1991_2000/bio9.tif")
c3<-raster("D:/Bioclimatiques_rcp45/1991_2000/bio15.tif")
c4<-raster("D:/Bioclimatiques_rcp45/1991_2000/bio2.tif")
c5<-raster("D:/Bioclimatiques_rcp45/1991_2000/continentality.tif")
c6<-raster("D:/Bioclimatiques_rcp45/1991_2000/monthCountByTemp10.tif")
c7<-raster("D:/Bioclimatiques_rcp45/1991_2000/bio13.tif")

c1991_2000<-stack(c1, c2, c3, c4, c5, c6, c7)

punts<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/entrada_BG/1991_2000.csv")
punts<-subset(punts, select=-X)
prova<-extract(x=c1991_2000, punts, method="bilinear", df=T)
write.csv(prova, "C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/sortida_BG/1991_2000BGextract.csv", row.names = F)

####################################2001_2010####################################

c1<-raster("D:/Bioclimatiques_rcp45/2001_2010/aridityIndexThornthwaite.tif")
c2<-raster("D:/Bioclimatiques_rcp45/2001_2010/bio9.tif")
c3<-raster("D:/Bioclimatiques_rcp45/2001_2010/bio15.tif")
c4<-raster("D:/Bioclimatiques_rcp45/2001_2010/bio2.tif")
c5<-raster("D:/Bioclimatiques_rcp45/2001_2010/continentality.tif")
c6<-raster("D:/Bioclimatiques_rcp45/2001_2010/monthCountByTemp10.tif")
c7<-raster("D:/Bioclimatiques_rcp45/2001_2010/bio13.tif")

c2001_2010<-stack(c1, c2, c3, c4, c5, c6, c7)

punts<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/entrada_BG/2001_2010.csv")
punts<-subset(punts, select=-X)
prova<-extract(x=c2001_2010, punts, method="bilinear", df=T)
write.csv(prova, "C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/sortida_BG/2001_2010BGextract.csv", row.names = F)

####################################2011_2020####################################

c1<-raster("D:/Bioclimatiques_rcp45/2011_2020/aridityIndexThornthwaite.tif")
c2<-raster("D:/Bioclimatiques_rcp45/2011_2020/bio9.tif")
c3<-raster("D:/Bioclimatiques_rcp45/2011_2020/bio15.tif")
c4<-raster("D:/Bioclimatiques_rcp45/2011_2020/bio2.tif")
c5<-raster("D:/Bioclimatiques_rcp45/2011_2020/continentality.tif")
c6<-raster("D:/Bioclimatiques_rcp45/2011_2020/monthCountByTemp10.tif")
c7<-raster("D:/Bioclimatiques_rcp45/2011_2020/bio13.tif")

c2011_2020<-stack(c1, c2, c3, c4, c5, c6, c7)

punts<-read.csv("C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/entrada_BG/2011_2020.csv")
punts<-subset(punts, select=-X)
prova<-extract(x=c2011_2020, punts, method="bilinear", df=T)
write.csv(prova, "C:/Users/munozferrandiz/Desktop/IMPORTANT_NOUMODEL/sortida_BG/2011_2020BGextract.csv", row.names = F)