#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Write a program that will add an environmental variable named JUNK. Give this variable a
#value of "Hello world". Then print out each key/value pair as in the first program in this hand-on exercise.

my $env_key;
my $env_value;

$ENV{'JUNK'} = "Hello world";

while ( ($env_key, $env_value) = each %ENV) {
	print "$env_key -- $env_value\n";
}