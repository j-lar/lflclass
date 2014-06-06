#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Using the methods to access each of the hash values write a program that
#prints out each of the keys and values of the %ENV hash.

my $env_key;
my $env_value;

while ( ($env_key, $env_value) = each %ENV) {
	print "$env_key -- $env_value\n";
}