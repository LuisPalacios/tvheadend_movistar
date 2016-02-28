#!/bin/bash

# Fuente del EPG: http://www.iptvsaga.com/xmltv-epg-graber-batch-script-for-windows/
# -> http://www.iptvsaga.com/download/xmltv_epg_graber.zip
#
cd /home/luis/guia
wget http://www.vuplus-community.net/rytec/rytecxmltv-Spain.gz
gunzip -f rytecxmltv-Spain.gz
mv rytecxmltv-Spain guia-tmp.xml

# Cambio varios nombres de programas para adecuarlo a los que utiliza Movistar TV
# y conseguir así que el EPG se asocie de forma automática en Tvheadend
#
./retoca_guia.pl < guia-tmp.xml > guia.xml
rm guia-tmp.xml
