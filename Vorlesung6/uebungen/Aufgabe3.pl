#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;
#  14.12.2002 13:05:06 App. 2435 Ziel 0221/5323458 245s 0.36 Eu
open DATEIOPEN, '<aufgabe3.txt';
open DATEIOUT, '>aufgabe3out.txt';

binmode(DATEIOPEN);
binmode(DATEIOUT);

#my $daten = 'Anzahl: 7 Einzelpreis: 37.99';

#my $muster = '(\d+\.\d+\.\d+\s\d+:\d+:\d+\sApp\.\s\d+\sZiel\s\d+\/\d)(\s+\ds\s\d+\.\d+[A-z]+)';
my $muster = '(\/\d)(\d+\s)';
#my $replacemuster = '$1... ';

my $erg;

while (<DATEIOPEN>) {
    if ($_ =~ s/$muster/$1... /) {
        print $_;
        print DATEIOUT $_;
    }
}
