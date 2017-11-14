#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

print "Geben Sie einen Dateinamen zum kopieren ein:\n";
my $eingabedatei = "<" . <STDIN>;
print "Geben Sie einen Ausgabenamen an:\n";
my $ausgabedatei = ">" . <STDIN>;

chomp $eingabedatei;
chomp $ausgabedatei;

open DATEIOPEN, $eingabedatei;
open DATEIOUT, $ausgabedatei;


binmode(DATEIOPEN);
binmode(DATEIOUT);

while (<DATEIOPEN>){
    print DATEIOUT $_;
}