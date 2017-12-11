
library(sysfonts)

### set appropriate working directory #####

setwd("C:/Users/omckenna/Documents/")

#### Figure 1 : soil hotspots ####

tiff (file = "soilhotspots_figure1_final.tiff",
      res = 600, pointsize = 14,height=6,width=7,units= "in")
layout(matrix(c(1,2,3,4),2,2))
par(las=1, mar=c(3.8,3.5,0.2,.6),oma=c(.3,.3,.3,.3),tck=-0.015,mgp=c(2,0.45,0),cex.axis=0.9)
font.add.google("Open Sans")
#Cations
percent.mass <- c(2.418,1.163,1.068,2.154,1.428)
percent.area<-c(2.647,1.44,0.695,2.418,1.595)
some.standard.errors <- c(0.1592,0.1298,0.16499,0.1265,0.139)
my.graph <- plot(percent.area,percent.mass, ylab="soil cation mass log[(Gg)]", xlab=expression(paste("Ecosystem area log[(km"^"2",")]")), ylim=c(0.2696,2.7696), xlim=c(0.5,3), pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),las=1,cex=1.75) # ,graph without error bars
abline(a=-.2304, b=1, lwd=2.5)
arrows(percent.area,percent.mass-some.standard.errors,
       x1=percent.area,y1=percent.mass+some.standard.errors, code=3, angle=90, length=0.1, col="black",lwd=1.5)
points(percent.area,percent.mass,pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),cex=1.75)
text(0.695, 1.4, labels = "*", cex=2)
text(0.6,2.6, labels = "a", cex=2)
legend("bottomright",pch=c(23,22,25,24,21),legend=c("Playa","Grassland","Tarbush","Creosote", "Mesquite"),bty="n",pt.bg=c("Black","goldenrod","blue","purple","red"),pt.cex=0.9,cex=0.9)

#Carbon
percent.mass1 <- c(2.0,1.0,0.845,1.934,1.180)
percent.area1<-c(2.647,1.44,0.695,2.418,1.595)
some.standard.errors1<-c(0.1838,0.224,0.1447,0.1647,0.1809)
my.graph1 <- plot(percent.area1,percent.mass1, ylab="", xlab=expression(paste("Ecosystem type area log[(km"^"2",")]")), ylim=c(-0.0524,2.4476), xlim=c(0.5,3), pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),las=1,cex=1.75) # ,graph without error bars
abline(a=-0.5524, b=1, lwd=2.5)
arrows(percent.area1,percent.mass1-some.standard.errors1,
       x1=percent.area1,y1=percent.mass1+some.standard.errors1, code=3, angle=90, length=0.1, col="black",lwd=1.5)
points(percent.area1,percent.mass1,pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),cex=1.75)
text(0.695, 1.2, labels = "*", cex=2)
text(0.6,2.3, labels = "c", cex=2)
mtext("soil organic carbon mass log[(Gg)]", side=2, line=2, at=1.1,las=0,cex=0.8)
legend("bottomright",pch=c(23,22,25,24,21),legend=c("Playa","Grassland","Tarbush","Creosote", "Mesquite"),bty="n",pt.bg=c("Black","goldenrod","blue","purple","red"),pt.cex=0.9,cex=0.9)

#Nitrogen
percent.mass2 <- c(1.123,0.054,-0.202,1.052,0.216)
percent.area2<-c(2.647,1.44,0.695,2.418,1.595)
some.standard.errors2<-c(0.1357,0.168,0.1464,0.1482,0.1381)
my.graph2 <- plot(percent.area2,percent.mass2, ylab="soil nitrogen mass log[(Gg)]", xlab=expression(paste("Ecosystem type area log[(km"^"2",")]")), ylim=c(-.943,1.557), xlim=c(0.5,3), pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),las=1,cex=1.75) # ,graph without error bars
abline(a=-1.443, b=1, cex=1.25,lwd=2.5)
arrows(percent.area2,percent.mass2-some.standard.errors2,
       x1=percent.area2,y1=percent.mass2+some.standard.errors2, code=3, angle=90, length=0.1, col="black",lwd=1.5)
points(percent.area2,percent.mass2,pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),cex=1.75)
text(0.6,1.4, labels = "b", cex=2)
legend("bottomright",pch=c(23,22,25,24,21),legend=c("Playa","Grassland","Tarbush","Creosote", "Mesquite"),bty="n",pt.bg=c("Black","goldenrod","blue","purple","red"),pt.cex=0.9,cex=0.9)
text(0.695, 0.12, labels = "*", cex=2)

#phosphorus
percent.mass3 <- c(-0.786,-1.9912,-1.767,-0.964,-1.971)
percent.area3<-c(2.647,1.44,0.695,2.418,1.595)
some.standard.errors3<-c(0.1478,0.257,0.1538,0.157,0.165)
my.graph3 <- plot(percent.area3,percent.mass3, ylab="soil phosphorus mass log[(Gg)]", xlab=expression(paste("Ecosystem type area log[(km"^"2",")]")) , ylim=c(-2.8991,-0.3991), xlim=c(0.5,3), pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),las=1,cex=1.75) # ,graph without error bars
abline(a=-3.3991, b=1, cex=1.25,lwd=2.5)
arrows(percent.area3,percent.mass3-some.standard.errors3,
       x1=percent.area3,y1=percent.mass3+some.standard.errors3, code=3, angle=90, length=0.1, col="black",lwd=1.5)
points(percent.area3,percent.mass3,pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),cex=1.75)
text(0.695, -1.45, labels = "*", cex=2)
text(0.6,-0.55, labels = "d", cex=2)
legend("bottomright",pch=c(23,22,25,24,21),legend=c("Playa","Grassland","Tarbush","Creosote", "Mesquite"),bty="n",pt.bg=c("Black","goldenrod","blue","purple","red"),pt.cex=0.9,cex=0.9)

dev.off()

######Figure 2: ANPP Hotspots #####

tiff(file = "hotspots_figure2_final.tiff",
     res = 600, pointsize = 12,height=3,width=3,units= "in")
par(las=1, mar=c(3.2,3.2,.5,.5), oma=c(0,0,0,0), mgp=c(2,.5,0), tck=-0.015,cex.axis=0.85)
font.add.google("Open Sans")
#NPP
percent.mass <- c(3.75,2.59,1.98,3.35,2.49)
percent.area<-c(2.65,1.44,0.69,2.42,1.59)
some.standard.errors <- c(0.12,0.13,0.26,0.22,0.14)
my.graph <- plot(percent.area,percent.mass, ylab="ANPP log[(Mg/y)]", xlab=expression(paste("Ecosystem type area log[(km"^"2",")]")), ylim=c(1.5464,4.1392), xlim=c(0.5,3), pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),las=1,cex=1.7) # ,graph without error bars
abline(a=1, b=1.0464, lwd=2.5)
arrows(percent.area,percent.mass-some.standard.errors,
       x1=percent.area,y1=percent.mass+some.standard.errors, code=3, angle=90, length=0.1,lwd=1)
points(percent.area,percent.mass,pch=c(21,22,23,24,25),bg=c("red","goldenrod","Black","purple","blue"),cex=1.7)
#text(4.95, 35, labels = "*", cex=2.5)
#text(10,272, labels = "A", cex=2.5)
legend("bottomright",pch=c(23,22,25,24,21),legend=c("Playa","Grassland","Tarbush","Creosote", "Mesquite"),bty="n",pt.bg=c("Black","goldenrod","blue","purple","red"),pt.cex=0.9,cex=0.9)
dev.off()

####Figure 3: ANPP Hotmoments #####

#Load in CSV
NPP<-read.csv("C:/Users/omckenna/Documents/NPP.csv")

y1<-NPP$Creosote
y2<-NPP$Tarbush
y3<-NPP$Mesquite
y4<-NPP$Grassland
y5<-NPP$Playa
x<-NPP$PPT


playalin<-lm(y5~x)
playa<-lm(y5 ~ poly(x, 2, raw=TRUE))
summary(playa)
plot(x,y5)
abline(6.04,0.02)

pol2 <- (function(x) playa$coefficient[3]*x^2 + playa$coefficient[2]*x + playa$coefficient[1])
curve(pol2, from=120, to=430, col="red", lwd=2)

C<-lm(y1~x)
Tar<-lm(y2~x)
M<-lm(y3~x)
G<-lm(y4~x)

Cpoly<-lm(y1 ~ poly(x, 2, raw=TRUE))

Tarpoly<-lm(y2 ~ poly(x, 2, raw=TRUE))
Mpoly<-lm(y3 ~ poly(x, 2, raw=TRUE))
Gpoly<-lm(y4 ~ poly(x, 2, raw=TRUE))

pol3 <- (function(x) Tarpoly$coefficient[3]*x^2 + Tarpoly$coefficient[2]*x + Tarpoly$coefficient[1])
pol4<- (function(x) Cpoly$coefficient[3]*x^2 + Cpoly$coefficient[2]*x + Cpoly$coefficient[1])


y6<-playaNPP$Playa[14:19]
y7<-playaNPP$Playa[1:13]

flood<-lm(y6~x1)
nonflood<-lm(y7~x2)

summary(flood)
summary(nonflood)

summary(C)
summary(Tar)
summary(M)
summary(G)

summary(Mpoly)


plot(x, y1)
plot(x,y2)
abline(Tar)

####Figure 3 ####

tiff (file = "hotspots_Figure3_final.tiff",
      res = 600, pointsize = 16,height=5,width=6,units= "in")
par(las=1, mar=c(3.5,3.5,0.2,0.2), oma=c(0,0,0,0), mgp=c(2.2,.5,0), tck=-0.015,cex.axis=0.85)

clip(145,430,0,600)

curve(pol2, from=130, to=430,lwd=2, ylim=c(0,600), col="black", xname="x", xlim=c(120,430),xlab="Annual Precipitation (mm)",ylab=expression(paste("ANPP (g m"^"-2"," y"^"-1",")")))
#curve(pol3, from=125, to=430, col="purple", lwd=2, xname= "x",add=TRUE)
#curve(pol4, from=125, to=430, col="blue", lwd=2, xname= "x",add=TRUE)
legend("topleft", legend=c("Playa","Grassland", "Creosote","Tarbush", "Mesquite"),col=c("Black","goldenrod","blue","purple","red"),cex=0.6,lwd=c(2,2,2,2,2),lty=c(1,1,1,1,2),merge=FALSE,bty="n")

text(205,602, expression(paste(R^2==0.57)), cex=0.6)
text(205, 575,expression(paste(R^2==0.49)), cex=0.6)
text(205, 548,expression(paste(R^2==0.37)), cex=0.6)
text(205, 522,expression(paste(R^2==0.43)), cex=0.6)
text(205, 496,expression(paste(NS)), cex=0.6)


clip(125,435,0,650)

abline(C, col="blue", lwd=2, lty=1)
abline(Tar, col="purple",lwd=2, lty=1)
abline(M, col="red",lwd=1, lty=2)
abline(G, col="goldenrod",lwd=2, lty=1)

points(x,y5, pch=19,col="black")
points(x, y1, pch=19,col="blue")
points(x, y2, pch=19,col="purple")
points(x, y3, pch=19,col="red")
points(x, y4, pch=19,col="goldenrod")
dev.off()

###### Figure 4: Runon estimate #####

y<-c(133.5754,566.7822,465.9299,26.46553,144.8723,543.1824,261.5754)
x<-c(286.77,254.76,302.006,130.302,172.72,291.592,239.522)

tiff (file = "hotspots_figure4_final.tiff",
      res = 600, pointsize = 12,height=2.8,width=3,units= "in")

par(las=1, mar=c(3.2,3.2,0.2,0.2), oma=c(0,0,0,0),tck=-0.015,mgp=c(2,0.4,0),cex.axis=0.7)


curve(8.3234*exp(0.0135*x), from = 130, to= 302, n=100, type="l", lwd= 3, col="blue", xlim=c(100,310), ylim=c(0,600), xlab= "Precipitation (mm/yr)", ylab="Runon (mm/yr)")

points(y~x, pch=19, bg="black", cex=1.2)
text(175,2600,labels=expression(paste(R^2==0.65, ",  ", p < phantom(), "0.01", " ")),cex=0.7)

dev.off()
