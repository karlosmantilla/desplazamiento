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

halcaldes<-read.table('halcaldes.txt',header=T,sep='\t',dec=',')

hdocentesnosind<-read.table('hdocentesnosind.txt',header=T,sep='\t',dec=',')

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

