getwd()
library(readxl)
library(naniar)
library(dplyr)
datos<-read_xlsx("Datos/online_retail_II.xlsx")
#resumen
str(datos)
datos$`Customer ID`<-as.character(datos$`Customer ID`)
summary(datos)
sum(is.na(datos))
miss_var_summary(datos)
dim(datos)
length(unique(datos$Invoice))
#10. Calcula el precio medio de producto por pedido
diez<-datos%>%
  group_by(Description)%>%
  summarize(media=mean(Price))
#12.	Calcula el número de productos por pedido
doce<-datos%>%
  group_by(Invoice)%>%
  summarize(productos=sum(Quantity))
#13.	Calcula el precio por pedido
trece<-datos%>%
  group_by(Invoice)%>%
  summarize(precio=sum(Price*Quantity))

