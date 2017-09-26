#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';

my $zahl1;
my $zahl2;
my $ergebnis;

print "Geben Sie die erste Zahl ein:\n";
$zahl1 = <STDIN>;
chomp $zahl1;

print "Geben Sie die zweite Zahl ein:\n";
$zahl2 = <STDIN>;
chomp $zahl2;

if($zahl1 > $zahl2){
    $ergebnis = $zahl1 - $zahl2;
    print "Zahl1 ist $ergebnis groesser!\n";
}elsif($zahl1 < $zahl2){
    $ergebnis = $zahl2 - $zahl1;
    print "Zahl2 ist $ergebnis groesser!\n";
}else{
    print "Beide Zahlen sind gleich gross!\n";
}

