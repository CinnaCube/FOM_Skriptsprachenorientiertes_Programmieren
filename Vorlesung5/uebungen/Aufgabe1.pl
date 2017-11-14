#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

my $daten = "Perl -51.464778 hallo   #hallo *0201/12345* Autobahn45 jhgjh 1.11.111.1";

#Aufgabe 1
#my $muster = '^[Pp]erl';

#Aufgabe 2
#my $muster = '#.*';

#Aufgabe 3
#my $muster = '[\+\-\d]';

#Aufgabe 4
#my $muster = '[^A-z]';

#Aufgabe 5
#my $muster = '\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}';
my $muster = '(\d{1,3}\.){3}\d{1,3}';

#Aufgabe 6
#my $muster = '\s[A-z]{3}\s';

#Aufgabe 7
#my $muster = '(\d)';

if($daten =~ m/$muster/){
    print"Muster gefunden\n";
    print"Gefundener Ausdruck: $&\n";
}else{
    print"Muster nicht gefunden\n";
}
