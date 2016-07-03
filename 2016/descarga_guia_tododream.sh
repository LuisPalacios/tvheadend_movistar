#!/bin/bash

#
# A principios de Julio de 2016 el enlace de vuplus devuelve
# un fichero vacío. Mientras se arregla utilizar el
# script descarga_guia_tododream.sh

cd /home/luis/guia
wget http://epg.tododream.com/latinmunich_xmltv-movistar-spain.gz
gunzip -f latinmunich_xmltv-movistar-spain.gz
mv latinmunich_xmltv-movistar-spain guia-tmp.xml

# Cambio varios nombres de programas para adecuarlo a los que utiliza Movistar TV
# y conseguir así que el EPG se asocie de forma automática en Tvheadend
#
./retoca_guia_tododream.pl < guia-tmp.xml > guia.xml

rm -f guia-tmp.xml
rm -f latinmunich_xmltv-movistar-spain.gz > /dev/null 2>/dev/null
