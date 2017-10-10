#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

my @zeichen = Crypt("ABCZ");
print @zeichen;

sub Crypt{
    my @buchstaben = split('',$_[0]);
    for(my $i=0;$i<=@buchstaben-1;$i++){
        if($buchstaben[$i] eq "Z"){
            $buchstaben[$i] = "A";
        }else {
            $buchstaben[$i] = chr(ord($buchstaben[$i]) + 1);
        }
    }
    return @buchstaben;
}