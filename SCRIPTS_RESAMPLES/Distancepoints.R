 

P1<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/COORD11/1x1GAKK.csv", header = T, sep=";")
P2<-read.csv("C:/Users/munozferrandiz/Desktop/NETES/COORD11/GENTIANA_ALPINA_KK.csv", header = T, sep=";")
matriu<-pointDistance(p1=P1, p2=P2, lonlat = T)

write.csv(matriu, file="C:/Users/munozferrandiz/Desktop/NETES/COORD11/PROOVA.csv")

help("write.csv")
