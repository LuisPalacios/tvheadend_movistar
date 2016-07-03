#!/usr/bin/perl -w

#
# Las que he comentado es que no necesitan retocarse porque
# la fuente coincide con el destino
#
my %REPLACE=(
     "LA 1 HD"                     => "La 1 HD" ,
     "Antena 3 HD"                 => "Antena 3 HD" ,
     "Cuatro HD"                   => "Cuatro HD" ,
     "Telecinco HD"                => "Tele 5 HD" ,
     "La Sexta HD"                 => "laSexta HD" ,
#     "TeleMadrid Sat"              => "Telemadrid" ,
     "C+ Series HD"                => "Canal+ Series HD" ,
     "C+ Series Xtra HD"           => "Canal+ Series Xtra HD" ,
#     "FOX HD"                      => "FOX HD" ,
#     "TNT HD"                      => "TNT HD" ,
#     "Comedy Central HD"           => "Comedy Central HD" ,
#     "Calle 13 HD"                 => "Calle 13 HD" ,
#     "COSMO HD"                    => "COSMO HD" ,
#     "AMC HD"                      => "AMC HD" ,
     "Fox life HD"                 => "FOX life HD" ,
#     "AXN White HD"                => "AXN White HD" ,
     "SYFY HD"                     => "SyFy HD" ,
#     "Non Stop People HD"          => "Non Stop People HD" ,
     "MTV ESPANA"                  => "MTV España" ,
     "Factoria de Ficcion"         => "FDF" ,
     "Atreseries"                  => "Atreseries HD" ,
#     "Canal+ Estrenos HD"          => "Canal+ Estrenos HD" ,
     "C+ Xtra HD"                  => "Canal+ Xtra HD" ,
     "C+ DCine HD"                 => "Canal+ DCine HD" ,
#     "TCM HD"                      => "TCM HD" ,
#     "Hollywood HD"                => "Hollywood HD" ,
#     "Sundance Channel HD"         => "Sundance Channel HD" ,
#     "Paramount C"                 => "Paramount C" ,
     "C+ Liga HD"                  => "Canal+ Liga HD" ,
#     "Canal+ Partidazo HD"         => "Canal+ Partidazo HD" ,
#     "C+ Liga 2"                   => "Canal+ Liga 2 HD" ,
     "Bein Sports HD"              => "beIN Sports HD" ,
     "Bein Max1 HD"                => "beIN MAX 1" ,
#     "Real Madrid TV HD"           => "Real Madrid TV HD" ,
     "Movistar Formula1 HD"        => "Movistar F1 HD" ,
#     "Movistar MotoGP HD"          => "Movistar MotoGP HD" ,
     "C+ Golf"                     => "Canal+ Golf HD" ,
#     "Eurosport 1 HD"              => "Eurosport 1 HD" ,
     "Eurosport2"                  => "Eurosport 2 HD" ,
#     "Teledeporte HD"              => "Teledeporte HD" ,
#     "C+ Toros HD"                 => "Canal+ Toros HD" ,
     "Nat Geographic HD"           => "National Geographic HD" ,
#     "Nat Geo Wild HD"             => "Nat Geo Wild HD" ,
     "Discovery"                   => "Discovery Channel HD" ,
#     "Odisea HD"                   => "Odisea HD" ,
#     "Viajar HD"                   => "Viajar HD" ,
#     "Cocina"                      => "Cocina" ,
#     "Disney Channel HD"           => "Disney Channel HD" ,
     "NICK JR"                     => "Nick Jr" ,
    ) ;

# Variables
#
my $PRE  = '<display-name lang=\"es\">' ;
my $POST = '</display-name>' ;

# Funcion que hace la sustitucion
#
sub myfilter {
    my ($a) = @_;
    if ( exists $REPLACE{$a} ) {
	return $REPLACE{$a} ;
    } else {
	return $a ;
    }
}

# vamos a por ello
#
while (<>) {
    my $line = $_ ;
    $line =~ s/($PRE)(.*)($POST)/"$1".myfilter("$2")."$3"/ge ;
    print $line;
}
