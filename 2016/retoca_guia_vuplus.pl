#!/usr/bin/perl -w
#

# Array de sustituciones. Las que están comentadas es que
# están marcadas como "es", por lo que no funcionan. Tengo que
# corregir esto en el futuro...
#
my %REPLACE=(
     "TVE 1"                       => "La 1 HD" ,
     "Antena 3"                    => "Antena 3 HD" ,
     "Cuatro"                      => "Cuatro HD" ,
     "Telecinco"                   => "Tele 5 HD" ,
     "La Sexta"                    => "laSexta HD" ,
#     "TeleMadrid Sat"              => "Telemadrid" ,
     "C+ Series"                   => "Canal+ Series HD" ,
     "C+ Series Xtra"              => "Canal+ Series Xtra HD" ,
     "Fox"                         => "FOX HD" ,
     "TNT"                         => "TNT HD" ,
     "Comedy Central"              => "Comedy Central HD" ,
     "Calle 13"                    => "Calle 13 HD" ,
     "Cosmopolitan HD"             => "COSMO HD" ,
     "AMC"                         => "AMC HD" ,
#     "Fox life"                    => "FOX life HD" ,
     "AXN White"                   => "AXN White HD" ,
#     "SyFy"                        => "SyFy HD" ,
     "Non Stop People"             => "Non Stop People HD" ,
     "MTV"                         => "MTV España" ,
     "Factoría de Ficción"         => "FDF" ,
     "Atreseries"                  => "Atreseries HD" ,
     "C+ Estrenos"                 => "Canal+ Estrenos HD" ,
     "Canal+ Xtra"                 => "Canal+ Xtra HD" ,
     "Canal+ DCine"                => "Canal+ DCine HD" ,
     "TCM"                         => "TCM HD" ,
     "Hollywood"                   => "Hollywood HD" ,
     "Sundance"                    => "Sundance Channel HD" ,
     "Paramount Channel"           => "Paramount C" ,
     "Canal + Liga"                => "Canal+ Liga HD" ,
     "C+ Partidazo"                => "Canal+ Partidazo HD" ,
     "C+ Liga 2"                   => "Canal+ Liga 2 HD" ,
     "BeIN Sports"                 => "beIN Sports HD" ,
     "Real Madrid TV"              => "Real Madrid TV HD" ,
     "Movistar Fórmula1"           => "Movistar F1 HD" ,
     "Movistar Moto GP"            => "Movistar MotoGP HD" ,
#     "Canal+ Golf"                 => "Canal+ Golf HD" ,
     "Eurosport"                   => "Eurosport 1 HD" ,
     "Eurosport2"                  => "Eurosport 2 HD" ,
     "Teledeporte"                 => "Teledeporte HD" ,
     "C+ Toros"                    => "Canal+ Toros HD" ,
     "National Geographic"         => "National Geographic HD" ,
     "National Geographic Wild HD" => "Nat Geo Wild HD" ,
#     "Discovery Channel"           => "Discovery Channel HD" ,
     "Odisea"                      => "Odisea HD" ,
     "Viajar"                      => "Viajar HD" ,
     "Discovery MAX"               => "Discov Max" ,
     "Canal Cocina"                => "Cocina" ,
     "Disney Channel"              => "Disney Channel HD" ,
     "Nick Junior"                 => "Nick Jr" ,
    ) ;

# Variables
#
my $PRE  = '<display-name lang=\"es\">' ;
my $POST = '</display-name>' ;

# Función que filtra las lineas
#
sub myfilter {
    my ($a) = @_;
    if ( exists $REPLACE{$a} ) {
	return $REPLACE{$a} ;
    } else {
	return $a ;
    }
}

# Vamos por ello...
#
while (<>) {
    my $line = $_ ;
    $line =~ s/($PRE)(.*)($POST)/"$1".myfilter("$2")."$3"/ge ;
    print $line;
}
