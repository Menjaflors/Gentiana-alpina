
##################################################################
#######################                 ##########################
####################### SCRIPT RESAMPLE ##########################
#######################                 ##########################
##################################################################

library(raster)


setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/annualPET.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "annualPETrepr.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/aridityIndexThornthwaite.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "aridityIndexThornthwaite.tif", overwrite=T)

#################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/climaticMoistureIndex.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "climaticMoistureIndex.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/continentality.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "continentality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/embergerQ.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "embergerQ.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/growingDegDays0.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "growingDegDays0.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/growingDegDays5.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "growingDegDays5.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/maxTempColdest.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "maxTempColdest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/minTempWarmest.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "minTempWarmest.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/monthCountByTemp10.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "monthCountByTemp10.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/PETColdestQuarter.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "PETColdestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/PETDriestQuarter.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "PETDriestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/PETseasonality.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "PETseasonality.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/PETWarmestQuarter.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "PETWarmestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/PETWettestQuarter.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "PETWettestQuarter.tif", overwrite=T)

##################################################################

setwd("D:/Bioclimatiques_rcp45")
entrada<-raster("./envirem_2021_2030/thermicityIndex.tif")
mascara<-raster("./2021_2030/bio1.tif")
sortida<-resample(entrada, mascara)

setwd("D:/Bioclimatiques_rcp45/2021_2030")
writeRaster(sortida, "thermicityIndex.tif", overwrite=T)

##################################################################