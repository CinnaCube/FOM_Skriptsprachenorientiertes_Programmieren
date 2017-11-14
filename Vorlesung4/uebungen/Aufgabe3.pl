#!/usr/bin/perl
use strict;
use File::Basename;
use warnings FATAL => 'all';
$| = 1;

my $gesamt = 0;
my $startverzeichnis = "C://temp";

#opendir STARTDIR, $startverzeichnis;

lesen($startverzeichnis);

print "Gesamte Groesse ist: $gesamt";

#closedir STARTDIR;

sub lesen{
    for my $element (glob $_[0]) {
        if(-f $element){
            my ($dev, $ino, $mode, $nlink, $uid, $gid, $rdev,
                $size, $atime, $mtime, $ctime, $blksize, $blocks)
                = stat($element);
            $gesamt += $size;
        }else {
            if ($element ne "." || $element ne ".."){
                lesen(dirname($element));
            }
        }
    }
}