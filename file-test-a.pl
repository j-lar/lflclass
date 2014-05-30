#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Write a program that checks for the existence of the file that you created with your name
#and address in it. If it does NOT exist print a warning statement that states that fact.
#Perform another file check to determine if a totally non-existence file exists (make up
#some filename), print a warning statement if this file is non-existent. 

my $addr_file = "address2.txt";
my $no_file = "whatfile.txt";

if (-e $addr_file) {
	print "Yep, $addr_file exists!\n";
}
else {
	print "$addr_file doesn't exist: $!\n";
}
if (-e $no_file) {
	print "Yep, $no_file exists too!\n";
}
else {
	print "$no_file doesn't exist: $!\n";
}