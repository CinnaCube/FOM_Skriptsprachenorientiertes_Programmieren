package aufgabe1_modul;
#use strict;
#use warnings FATAL => 'all';
$| = 1;

require Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(kreuzprodukt);

sub kreuzprodukt{
    my ($a, $b, $c) = @_;

    $$c[0] = $$a[1]*$$b[2] - $$a[2]*$$b[1];
    $$c[1] = $$a[2]*$$b[0] - $$a[0]*$$b[2];
    $$c[2] = $$a[0]*$$b[1] - $$a[1]*$$b[0];
}

1;