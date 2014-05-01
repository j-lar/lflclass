#!/usr/bin/perl

$coin1 = 5;
$coin2 = 10;

if ( ( $coin1 = 5 ) || ( $coin2 = 5 ) && ( $coin1 = 10 ) || ( $coin2 = 10 ) ) {
    print "You have a nickel and a dime!\n";
}

if ( ( $coin1 = 5 ) || ( $coin2 = 5 ) ) {
    print "You have a nickel!\n";
}
elsif ( ( $coin1 = 25 ) || ( $coin2 = 25 ) ) {
    print "You have a quarter!\n";
}
