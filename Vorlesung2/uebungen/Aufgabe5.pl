print "Geben was ein:\n";
$eingabe = <STDIN>;
chomp $eingabe;
$zeichenanzahl = length($eingabe);
for($_=1;$_<=$zeichenanzahl;$_++){
	print "$_ Zeichen\n";
}
#oder
for(1..length($eingabe)){
	print $_ . " " . $eingabe . "\n";
}
<STDIN>