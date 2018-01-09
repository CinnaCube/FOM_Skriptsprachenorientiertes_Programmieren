package aufgabe3_Modul;
#use strict;
use warnings FATAL => 'all';
$| = 1;

require Exporter;
@ISA = qw(Exporter);
@EXPORT = qw(func1 func2);
@EXPORT_OK = qw(func3);

sub func1{
    print"func1";
}
sub func2{
    print"func2";
}
sub func3{
    print"func3";
}

1;