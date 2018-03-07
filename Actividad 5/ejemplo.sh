#!/bin/bash

# Estación:

# Empalme 76256

cat sounding?* > sondeos.txt

egrep -v 'PRES|hPa' sondeos.txt | egrep '76256|Showalter|LIFT|SWEAT|K|Totals|CAPE|CINS|LFCT|CAPV|Temp|Pres|thick|Precip' > df2017.csv
