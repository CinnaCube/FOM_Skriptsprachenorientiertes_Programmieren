#!/usr/bin/perl
#use strict;
use warnings FATAL => 'all';
$| = 1;

use aufgabe1_modul;

my @a = (1,0,0);
my @b = (0,1,0);
my @c;

&kreuzprodukt(\@a, \@b, \@c);

print("Das Ergebnis lautet: @c\n");
