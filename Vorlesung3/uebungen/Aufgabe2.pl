#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

my $rueck = durchschnitt((10,20,30,40,50));

print "Das Ergebnis ist: ". $rueck;

sub durchschnitt{
    my $summe = 0;
    foreach my $eintrag (@_){
        $summe += $eintrag;
    }
    return $summe / @_;
}