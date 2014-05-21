#!/usr/bin/perl
use strict;
use warnings;
print `clear`;

#Write a program that defines a string variable named anything other than $_. This variable
#should have the value "pine maple spruce fir oak elm apple peach". Take this string, replace
#the whitespace with a ":" character - so that the string looks like "pine:maple:spruce:fir:oak:elm:apple:peach".
#Now split them as separate strings into an array - so that each tree is an array element of
#its own (see some of the examples in the course material). Sort them into alphabetical order,
#then print the name of each tree on a separate line.

my @array;
my @sorted;

my $sorted;
my $string = "pine maple spruce fir oak elm apple peach";
$string =~ s/\s/:/g;

@array = split /:/, $string;
@sorted = sort @array;

foreach $sorted (@sorted) {
	print "$sorted\n";

}