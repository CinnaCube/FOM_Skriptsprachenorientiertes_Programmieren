use strict;
use warnings FATAL => 'all';
$| = 1;
my @a = (-20..-1);
for(@a){
		print abs($_)."\n";
}

#=begin

for($_=20;$_>=1;$_--){
	print "$_\n";
}
<STDIN>