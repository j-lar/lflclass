#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Write a program that takes a list of files that are input on the command line.
#The program will reply as to whether each file is readable, writable, if its
#empty or it doesn't exist. If there are NOT any filenames entered what happens??
#The input values are found in @ARGV.
my $arg;

if ($#ARGV >= 0) {
	foreach $arg (@ARGV) {
		if ( -e $arg ) {
			print "$arg exists:\n";
			if ( -r $arg ) {
				print "\tIt's readable.\n";
			}
			if ( -w $arg ) {
				print "\tIt's writeable.\n";
			}
			if ( -z $arg ) {
				print "\tIt's empty\n";
			}
		}
		else {
			print "$arg doesn't exist.\n";
		}	
	}
}
else {
	print "You did not provide any files to check for.\nTry again, and pass a list of files seperated by spaces to the command.\nLike so: ./file-test-c.pl testfile.txt test2.txt\n";
}