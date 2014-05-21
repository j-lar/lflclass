#!/usr/bin/perl
use strict;
use warnings;

#Write a program that contains the string: "PINE elm SpRuCe Oak". Create an "if"
#statement that includes a substitution operator that will simply match on the four
#strings while ignoring the case of the characters. After the substitution, the string
#should be in reverse order. NOTE: The output will include the characters in their
#original case. Print out the resulting string - the output would be: Oak SpRuCe elm PINE

my $string = "PINE elm SpRuCe Oak";

if ( $string =~ s/(pine)\s(elm)\s(spruce)\s(oak)/$4 $3 $2 $1/i ) {
	print "$string\n";
}