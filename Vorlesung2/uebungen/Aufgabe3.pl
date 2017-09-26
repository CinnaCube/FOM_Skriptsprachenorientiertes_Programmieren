print "Befehl:\n";
$befehl = <STDIN>;
$ausgabe = `$befehl`;
print "Der Befehl $befehl gibt aus:\n $ausgabe\n";