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
halcaldes<-extorsion[,c('Cod..Mpio.','Departamento','Valor','año')]
halcaldes$halcaldes<-halcaldes$Valor

hdocentesnosind<-read.table('hdocentesnosind.txt',header=T,sep='\t',dec=',')
hdocentesnosind<-extorsion[,c('Cod..Mpio.','Departamento','Valor','año')]
hdocentesnosind$hdocentesnosind<-hdocentesnosind$Valor

hdocentesind<-read.table('hdocentesind.txt',header=T,sep='\t',dec=',')

hindigena<-read.table('hindigena.txt',header=T,sep='\t',dec=',')

hlideres<-read.table('hlideres.txt',header=T,sep='\t',dec=',')

hmujeres<-read.table('hmujeres.txt',header=T,sep='\t',dec=',')

hperiodista<-read.table('hperiodista.txt',header=T,sep='\t',dec=',')

hsindi<-read.table('hsindi.txt',header=T,sep='\t',dec=',')

data1<-merge(acsub1, coca1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data1<-data1[,c('Cod..Mpio.','Departamento','año','acsubv','coca')]

data2<-merge(data1, desaparecidos1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data2<-data2[,-6]

data3<-merge(data2, extorsion1,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data3<-data3[,-7]

data4<-merge(data3, halcaldes,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data4<-data4[,-8]

data5<-merge(data4, hdocentesnosind,by=c('Cod..Mpio.','Departamento','año'), all = TRUE)
data5<-data5[,-9]
