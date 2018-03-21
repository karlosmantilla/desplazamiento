# Lectura de Datos

acsub<-read.table('acsub.txt',header=T,sep='\t',dec=',')
acsub1<-acsub[,c('Cod..Mpio.','Departamento','Valor','año')]
acsub1$acsubv<-acsub1$Valor
coca<-read.table('coca.txt',header=T,sep='\t',dec=',')
coca1<-acsub[,c('Cod..Mpio.','Departamento','Valor','año')]
coca1$coca<-coca1$Valor
desaparecidos<-read.table('desaparecidos.txt',header=T,sep='\t',dec=',')
desaparecidos1<-desaparecidos[,c('Cod..Mpio.','Departamento','Valor','año')]
desaparecidos1$desap<-desaparecidos$Valor
extorsion<-read.table('extorsion.txt',header=T,sep='\t',dec=',')
extorsion1<-extorsion[,c('Cod..Mpio.','Departamento','Valor','año')]
extorsion1$extor<-extorsion1$Valor
halcaldes<-read.table('halcaldes.txt',header=T,sep='\t',dec=',')
halcaldes1<-halcaldes[,c('Cod..Mpio.','Departamento','Valor','año')]
halcaldes1$halcaldes<-halcaldes$Valor
hdocentesnosind<-read.table('hdocentesnosind.txt',header=T,sep='\t',dec=',')
hdocentesnosind1<-hdocentesnosind[,c('Cod..Mpio.','Departamento','Valor','año')]
hdocentesnosind1$hdocnosind<-hdocentesnosind1$Valor
hdocentesind<-read.table('hdocentesind.txt',header=T,sep='\t',dec=',')
hdocentesind1<-hdocentesind[,c('Cod..Mpio.','Departamento','Valor','año')]
hdocentesind1$hdocsind<-hdocentesind1$Valor
hindigena<-read.table('hindigena.txt',header=T,sep='\t',dec=',')
hindigena1<-hindigena[,c('Cod..Mpio.','Departamento','Valor','año')]
hindigena1$hindigena<-hindigena1$Valor
hlideres<-read.table('hlideres.txt',header=T,sep='\t',dec=',')
hlideres1<-hlideres[,c('Cod..Mpio.','Departamento','Valor','año')]
hlideres1$hlideres<-hlideres1$Valor
hmujeres<-read.table('hmujeres.txt',header=T,sep='\t',dec=',')
hmujeres1<-hmujeres[,c('Cod..Mpio.','Departamento','Valor','año')]
hmujeres1$hmujeres<-hmujeres1$Valor
hperiodista<-read.table('hperiodista.txt',header=T,sep='\t',dec=',')
hperiodista1<-hperiodista[,c('Cod..Mpio.','Departamento','Valor','año')]
hperiodista1$hperiodista<-hperiodista1$Valor
hsindi<-read.table('hsindi.txt',header=T,sep='\t',dec=',')
hsindi1<-hsindi[,c('Cod..Mpio.','Departamento','Valor','año')]
hsindi1$hsindi<-hsindi1$Valor

# Construcción de la Data Violencia

data1<-merge(acsub1, coca1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data1<-data1[,c('Cod..Mpio.','Departamento','año','acsubv','coca')]
head(data1,1)
data2<-merge(data1, desaparecidos1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data2<-data2[,-6]
head(data2,1)
data3<-merge(data2, extorsion1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data3<-data3[,-7]
head(data3,1)
data4<-merge(data3, halcaldes1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data4<-data4[,-8]
head(data4,1)
data5<-merge(data4, hdocentesnosind1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data5<-data5[,-9]
head(data5,1)
data6<-merge(data5, hdocentesind1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data6<-data6[,-10]
head(data6,1)
data7<-merge(data6, hindigena1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data7<-data7[,-11]
head(data7,1)
data8<-merge(data7, hlideres1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data8<-data8[,-12]
head(data8,1)
data9<-merge(data8, hmujeres1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data9<-data9[,-13]
head(data9,1)
data10<-merge(data9, hperiodista1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data10<-data10[,-14]
head(data10,1)
data11<-merge(data10, hsindi1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data11<-data11[,-15]
head(data11,1)

data11[is.na(data11)] <- 0
summary(data11)


# Exportar tabla:

write.table(data11, "violencia.txt", sep="\t")

##
