#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

my %bankleitzahl = ("36050105","Sparkasse Essen",
                    "10050001","Landesbank Berlin",
                    "23051030","Sparkasse Südholstein auf Helgoland");
my @array = '';

&auslesenHash(keys(%bankleitzahl));

print "$bankleitzahl{$array[0]}";

sub auslesenHash{
    @array = @_;
}