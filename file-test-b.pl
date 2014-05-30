#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Write a program that uses the 'stat' function to retrieve the size of the
#"address.txt" file. Also use the localtime function to determine the date
#of last modification time - use the first method discussed above.

my $file = "address.txt";
my $size = (stat($file))[7];
my $mtime = (stat($file))[9];
my $timestamp = localtime $mtime;
print "The size of $file is: $size bytes\n";
print "$file was created at: $timestamp\n";