#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

foreach my $datei (glob "*.txt") {
    if(!-w $datei){
        print $datei . "\n";
    }
}