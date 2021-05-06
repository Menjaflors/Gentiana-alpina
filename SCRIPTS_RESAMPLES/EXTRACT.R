
  ###################
  ##### EXTRACT #####
  ###################
  
library(raster)
  
setwd("D:/Bioclimatiques_rcp85")
inputDir<-"./2011_2020"                 #Aquí hi hauria d'haver tant biovars com ENVIREM. 
files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
x<-stack(files)
  
y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/2011_2020.csv", header = TRUE, sep = ";")
class(y)
  
combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
write.csv(combinacio, "extract85_2011_2020.csv")



inputDir<-"./envirem_2011_2020"                 #Aquí hi hauria d'haver tant biovars com ENVIREM. 
files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
x<-stack(files)

y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/2011_2020.csv", header = TRUE, sep = ";")
class(y)

combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
write.csv(combinacio, "extract85_ENVIREM_2011_2020.csv")







nombre<-c(9, 11, 11, 19, 151, 143)
decada<-c(1960, 1970, 1980, 1990, 2000, 2010)
plot(decada,nombre)

