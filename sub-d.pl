#!/usr/bin/perl
use strict;
use warnings;

#Alter exercise C so that the only the first letter of each tree name is capitalized

my $string = "PINE elm SpRuCe Oak";

if ( $string =~ s/(\w+)\s+(\w+)\s+(\w+)\s+(\w+)/\u\L$1 \E\u\L$2 \E\u\L$3 \E\u\L$4/i ) {
	print "$string\n";
}