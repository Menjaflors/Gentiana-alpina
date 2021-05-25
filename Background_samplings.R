
                        #Corregir el biaix a l'hora de fer background samplings# 

library(sf)
library(maptools)
library(raster)
library(spatstat)
library(sp)                       
library(spatialEco)
library(raster)


#################################################################################
##############################1961_2020##########################################
#################################################################################

################################ BW 5 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./OccsST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)
class(datatrans)
pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "C:/Users/munozferrandiz/Desktop/Projeccions prov/Provaraster1961_2020_3_OCCST.tif", overwrite=T)
plot(pt.kde)

################################ BW 1 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./OccsST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)
class(datatrans)
pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "C:/Users/munozferrandiz/Desktop/Projeccions prov/Provaraster1961_2020_3_OCCST.tif", overwrite=T)
plot(pt.kde)

#################################################################################
##############################1961_1970##########################################
#################################################################################

################################ BW 5 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1961_1970_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)
class(datatrans)
pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1961_1970_3.tif", overwrite=T)
plot(pt.kde)

################################ BW 1 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1961_1970_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)
class(datatrans)
pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1961_1970_3.tif", overwrite=T)
plot(pt.kde)

#################################################################################
##############################1971_1980##########################################
#################################################################################

################################ BW 5 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1971_1980_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1971_1980_3.tif", overwrite=T)
plot(pt.kde)

################################ BW 1 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1971_1980_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1971_1980_3.tif", overwrite=T)
plot(pt.kde)
#################################################################################
##############################1981_1990##########################################
#################################################################################

################################ BW 5 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1981_1990_KK_sT.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1981_1990_3.tif", overwrite=T)


################################ BW 1 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1981_1990_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1981_1990_3.tif", overwrite=T)


#################################################################################
##############################1991_2000##########################################
#################################################################################

################################ BW 5 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1991_2000_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1991_2000_3.tif", overwrite=T)
plot(pt.kde)

################################ BW 1 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./1991_2000_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster1991_2000_3.tif", overwrite=T)
plot(pt.kde)
#################################################################################
##############################2001_2010##########################################
#################################################################################

################################ BW 5 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./2001_2010_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster2001_2010_3.tif", overwrite=T)


################################ BW 1 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./2001_2010_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster2001_2010_3.tif", overwrite=T)
plot(pt.kde)
#################################################################################
##############################2011_2020##########################################
#################################################################################

################################ BW 5 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./2011_2020_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster2011_2020_3.tif", overwrite=T)


################################ BW 1 ###########################################

setwd("C:/Users/munozferrandiz/Desktop/NETES/Decades")
data1<-read.csv("./2011_2020_KK_ST.csv")    # Si ho hagu?s de fer per d?cades, una per una. 
obre<-raster("./bio8.tif")

# prepare coordinates, data, and proj4string
coords <- data1[ , c("longitude", "latitude")]   # coordinates
data   <- data1
crs    <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0") # proj4string of coords

# make the SpatialPointsDataFrame object
datatrans<-spdf <- SpatialPointsDataFrame(coords      = coords,
                                          data        = data, 
                                          proj4string = crs)

pt.kde <- sp.kde(x = datatrans, bw = 3, standardize = T, 
                 newdata = obre, scale.factor = 1 )
writeRaster(pt.kde, "D:/PROBABILITATS/Provaraster2011_2020_3.tif", overwrite=T)
plot(pt.kde)
