#!/bin/bash

# Archivo "filtro.sh"
# Script para crear un archivo con la información de 12 sondeos, descargados de la
# Universidad de Wyoming (http://weather.uwyo.edu/upperair/sounding.html)
# para un rango de tiempo. Sustituir el valor de la estación de interés: 
# Por ejemplo Chihuahua es la estación número: 76225
# Para cambiar nombre de los archivos que se manejan, cambie las variables siguientes

STATION=76256
ARCHIVO=sondeos.txt
FILTRADO=df2017_2.csv

# Despues de editar este archivo, ejecuta el comando: chmod 755 script1.sh
# Para ejecutar el script: ./filtro.sh

# Definimos el separador de valores de las variables, en este caso es ":" 
IFS=":"

# Junta todos los archivos en 1
cat sounding* > $ARCHIVO

# Filtra los datos y deja la información
egrep -v 'PRES|hPa' sondeos.txt | egrep '76256|Showalter|LIFT|SWEAT|K|Totals|CAPE|CINS|LFCT|CAPV|Temp|Pres|thick|Precip' > $FILTRADO


