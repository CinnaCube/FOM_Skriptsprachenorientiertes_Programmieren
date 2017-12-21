#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

open DATEIOPEN, '<aufgabe2.txt';

binmode(DATEIOPEN);

#my $daten = 'Anzahl: 7 Einzelpreis: 37.99';

my $muster = 'Anzahl:\s(\d+)\sEinzelpreis:\s(\d+\.\d+)';

my $erg;

while (<DATEIOPEN>) {
    if ($_ =~ m/$muster/) {
        $erg = $1 * $2;
        print"Gesamt: $erg\n";
    }
    else {
        print"Muster nicht gefunden\n";
    }
}