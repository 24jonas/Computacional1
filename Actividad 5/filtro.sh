#!/bin/bash

# Estación:

# Empalme 76256

cat sounding?* > sondeos.txt

egrep '76256|CAPE|Precip' sondeos.txt > df2017CAPE_PW.csv
