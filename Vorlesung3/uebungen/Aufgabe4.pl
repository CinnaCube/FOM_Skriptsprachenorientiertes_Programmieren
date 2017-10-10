#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;

my @eingabe = (1,2);
@eingabe = swap(@eingabe);
print "@eingabe";


sub swap{
    if(@_ == 2){
        return reverse(@_);
    }
}