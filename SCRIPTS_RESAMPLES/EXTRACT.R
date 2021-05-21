
  ###################
  ##### EXTRACT #####
  ###################
  
library(raster)
  
  setwd("D:/Bioclimatiques_rcp45/seleccionades")
  inputDir<-"./1961_1970"                 #Aqu? hi hauria d'haver tant biovars com ENVIREM. 
  files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
  x<-stack(files)
  
  y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/1961_1970_KK_ST_SEP.csv", header = TRUE, sep = ";")
  class(y)
  
  combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
  write.csv(combinacio, "extract45_1961_1970.csv")
  
  
  setwd("D:/Bioclimatiques_rcp45/seleccionades")
  inputDir<-"./1971_1980"                 #Aqu? hi hauria d'haver tant biovars com ENVIREM. 
  files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
  x<-stack(files)
  
  y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/1971_1980_KK_ST_SEP.csv", header = TRUE, sep = ";")
  class(y)
  
  combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
  write.csv(combinacio, "extract45_1971_1980.csv")
  
  
  setwd("D:/Bioclimatiques_rcp45/seleccionades")
  inputDir<-"./1981_1990"                 #Aqu? hi hauria d'haver tant biovars com ENVIREM. 
  files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
  x<-stack(files)
  
  y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/1981_1990_KK_ST_SEP.csv", header = TRUE, sep = ";")
  class(y)
  
  combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
  write.csv(combinacio, "extract45_1981_1990.csv")
  
  
  setwd("D:/Bioclimatiques_rcp45/seleccionades")
  inputDir<-"./1991_2000"                 #Aqu? hi hauria d'haver tant biovars com ENVIREM. 
  files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
  x<-stack(files)
  
  y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/1991_2000_KK_ST_SEP.csv", header = TRUE, sep = ";")
  class(y)
  
  combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
  write.csv(combinacio, "extract45_1991_2000.csv")
  
  
  setwd("D:/Bioclimatiques_rcp45/seleccionades")
  inputDir<-"./2001_2010"                 #Aqu? hi hauria d'haver tant biovars com ENVIREM. 
  files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
  x<-stack(files)
  
  y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/2001_2010_KK_ST_SEP.csv", header = TRUE, sep = ";")
  class(y)
  
  combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
  write.csv(combinacio, "extract45_2001_2010.csv")
  
  
  

  
  
  
setwd("D:/Bioclimatiques_rcp45/seleccionades")
inputDir<-"./2011_2020"                 #Aqu? hi hauria d'haver tant biovars com ENVIREM. 
files <- list.files(inputDir, pattern = '.tif$', full.names = TRUE)
x<-stack(files)
  
y<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/Decades/2011_2020_KK_ST_SEP.csv", header = TRUE, sep = ";")
class(y)
  
combinacio<-extract(x, y, method="bilinear", df=TRUE, nl=length(files), sp=TRUE)
write.csv(combinacio, "extract45_2011_2020.csv")









