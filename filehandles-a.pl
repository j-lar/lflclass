#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Write a program that will open the file address.txt (located in your home directory),
#read the four lines, then print them to the standard output.

my $file = "address.txt";
open DATA, "<$file"
	or die "Could not open $file: $!";

while (<DATA>) {
	chomp;
	print "$_\n";
}
print "\nAll done now!\n";