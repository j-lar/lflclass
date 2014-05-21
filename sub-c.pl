#!/usr/bin/perl
use strict;
use warnings;

#Alter exercise B so that the resulting string is "pine ELM SPRUCE oak"...print this string

my $string = "PINE elm SpRuCe Oak";

if ( $string =~ s/(\w+)\s+(\w+)\s+(\w+)\s+(\w+)/\L$1 \U$2 \U$3 \L$4/i ) {
	print "$string\n";
}