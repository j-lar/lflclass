#!/usr/bin/perl

#Write a program that defines two strings. One string has the value "PiNe and SpRucE";
#the second string has a value of "Pine and\nSPruce". Have two "if" statements. The first
#one should match on the first pattern ignoring any differences in upper or lower case.
#The second "if" statement should match the second string, INCLUDING the newline character
#so the pattern will match on both "Pine" and "SPruce". Ignore the case of the letters as well. 

$_ = "PiNe and SpRucE";

if (/\bpine\b.*\bspruce\b/i) {
	print "First string matches\n";
}
$_ = "Pine and\nSPruce";

if ( /\bpine\b.*\bspruce\b/si ) {
	print "Second string matches as well\n";
}