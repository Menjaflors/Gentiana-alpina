

d.envs1961_2000 <- 'D:/quercus/Partage/Pep/Gentiana_Alpina_David/Biovars/mitjanes'
userRas.paths1961_2000 <- file.path(d.envs1961_2000, c('mitjanaaridityIndexThornthwaite_1961_2000.tif', 
                                                       'mitjanabio9_1961_2000.tif', 'mitjanabio15_1961_2000.tif', 
                                                       'mitjanabio18_1961_2000.tif', 
                                                       'mitjanacontinentality_1961_2000.tif', 
                                                       'mitjanamonthCountByTemp10_1961_2000.tif', 
                                                       'mitjanaPETColdestQuarter_1961_2000.tif', 
                                                       'mitjanaPETWettestQuarter_1961_2000.tif'))

# make a RasterStack out of the raster files
envs <- raster::stack(userRas.paths1961_2000)  

csvPath <- 'D:/quercus/Partage/Pep/Gentiana_Alpina_David/ocs/AREA_ESTUDI.csv'
# read csv with coordinates for polygon
shp <- read.csv(csvPath, header = TRUE)
bgExt <- sp::SpatialPolygons(list(sp::Polygons(list(sp::Polygon(shp)), 1)))
projection(bgExt)<-"+proj=longlat +datum=WGS84 +ellps=WGS84 +towgs84=0,0,0"

##########PROBLEMA VE AQUÍ###################################################################################
#############################################################################################################



#Entro el mateix ràster de funció de probabilitats 8 vegades per a fer un rasterbrick. I en faig el crop i el mask, 
#igual com amb les variables ambientals. 
obrir1<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50.tif")
obrir2<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_1.tif")
obrir3<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_2.tif")
obrir4<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_3.tif")
obrir5<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_4.tif")
obrir6<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_5.tif")
obrir7<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_6.tif")
obrir8<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_7.tif")

obrir<-stack(obrir1, obrir2, obrir3, obrir4, obrir5, obrir6, obrir7, obrir8)

envsBgCrop <- raster::crop(envs, bgExt)
envsBgCrop1<- raster::crop(obrir, bgExt)

envsBgMsk <- raster::mask(envsBgCrop, bgExt)     #Possiblement al córrer això per primera vegada, sortirà error. A
envsBgMsk1 <- raster::mask(envsBgCrop1, bgExt)   #la segona no hi ha error i funciona bé. 

#Extrec els valors d'aquest rasterbrick. Si segueixo les 5 línies de codi de baix, em queda un vector de la mateixa
#longitud que cellsamples2!! Això és molt bona senyal, el problema és que el vector de probabilitats no té els valors
#de probabilitat, sinó la posició numèrica de cada número. És a dir no és 0.2, 0.5, 0.01, 0.7 sinó que és 1,2,3,4. A
#la que canvïi això ja podré entrar el vector i fer el sampling, i el model quedarà millor!

####################Aquí és la part d'entrar i treure els NA del vector de probabilitats. Segurament el que s'ha de 
####################tocar és això.

valors<-values(envsBgMsk1)
cellSamples1 = 1:nrow(valors)
NoNA =complete.cases(valors)
cellSamples3 = cellSamples1 [NoNA]
probabilitats<-cellSamples3[1:length(cellSamples3)]

###################Aquí és la part dels valors dels ràsters ambientals

vv = values (envsBgMsk)
cellSamples = 1:nrow(vv)
notNA =complete.cases(vv)
cellSamples2 = cellSamples [notNA]    #L'objectiu és tenir un objecte d'igual longitud que cellsamples2 però amb probs. 


bgCellId = sample (x = cellSamples2,size = 100000,replace = F, prob = cellSamples3)
bg.xy = raster::xyFromCell(envsBgMsk,cell = bgCellId)
bg.xy = as.data.frame (bg.xy)
rm(vv)


#Això d'aquí baix és per provar entrant només una variable, però aquí estic força més lluny d'aconseguir-ho. 

KK<-raster("D:/quercus/Partage/Pep/Gentiana_Alpina_David/background_samplings/provaraster1961_50_7.tif")
valors1<-values(KK)
cellSamples1 = 1:nrow(valors)
NoNA =complete.cases(valors1)
cellSamples4 = valors [NoNA]


