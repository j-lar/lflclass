#!/usr/bin/perl
use strict;
use warnings;

#Alter exercise A to perform a global replacement on the letter "e" or "E" with 
#the letter "x". Print out the resulting string - the output would be:
#Oak SpRuCx xlm PINx

my $string = "PINE elm SpRuCe Oak";

if ( $string =~ s/(pine)\s(elm)\s(spruce)\s(oak)/$4 $3 $2 $1/i ) {
	$string =~ s/e/x/gi;
	print "$string\n";
}