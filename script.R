getwd()
library(readxl)
library(naniar)
library(dplyr)
datos<-read_xlsx("Datos/online_retail_II.xlsx")
#resumen
str(datos)
summary(datos)
sum(is.na(datos))
miss_var_summary(datos)
dim(datos)
length(unique(datos$Invoice))
#10. Calcula el precio medio de producto por pedido
diez<-datos%>%
  group_by(Description)%>%
  summarize(media=mean(Price))
