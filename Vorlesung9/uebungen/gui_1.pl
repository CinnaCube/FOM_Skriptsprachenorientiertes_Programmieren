#!/usr/bin/perl
use strict;
use warnings FATAL => 'all';
$| = 1;
use Tk;

my $main = MainWindow->new();



my $text1 = $main->Label( -text => 'Bitte geben sie die gefahrene Kilometer ein: ',
                            -height => 5,
                            -width => 40, )->pack();

my $km = $main->Entry()->pack();
my $text2 = $main->Label( -text => 'Bitte geben sie die Anzahl der Liter ein: ',
                                    -height => 5,
                                    -width => 40, )->pack();
my $liter = $main->Entry()->pack();

my $berechnen = $main->Button( -text => 'Berechnen',
    -height => 1,
    -width => 30,
    -command => \&eingabe_berechnen, )->pack();
my $schliessen = $main->Button( -text => 'Schliessen',
    -height => 1,
    -width => 30,
    -command => sub { exit }, )->pack();


sub eingabe_berechnen{
    my $graph = $main->Toplevel();

    my $c1 =  $graph->Canvas( -width => '350',
        -height => '350',)->pack(-side => "top");
    my $ergebnis = $km->get() / $liter->get();

    $c1 -> createText(30,50, -text => "20 Liter");
    $c1 -> createText(30,100, -text => "10 Liter");
    $c1 -> createText(30,200, -text => "0 Liter");

    $c1 -> createRectangle(50, 20, 70, 100, -fill => 'red');
    $c1 -> createRectangle(50, 100, 70, 150, -fill => 'yellow');
    $c1 -> createRectangle(50, 150, 70, 220, -fill => 'green');

    $c1 -> createRectangle(150, $ergebnis * 10, 170, 220, -fill => 'grey');
    $c1 -> createText(200,$ergebnis * 10, -text => "$ergebnis Liter");

    my $string =

    my $text3 = $graph->Label( -text => 'Der durchschnittliche Verbrauch beträgt: ' . $ergebnis . ' Liter',
        -height => 5,
        -width => 40, )->pack();
}


MainLoop();