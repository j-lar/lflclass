#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Write a program that will determine which of the filenames entered on the
#command line is the oldest. Print out the name of the file and when it was last modified (mtime). 

my $arg;
my $mtime;
my %mod_hash;
my $o_time = 17526585600;
my $o_name = "";

if ($#ARGV >= 0) {
	foreach $arg (@ARGV) {
		if ( -e $arg ) {
			$mtime = (stat($arg))[9];
			if ( $mtime < $o_time ) {
				$o_time = $mtime;
				$o_name = $arg;
			}
		}
		else {
			print "$arg doesn't exist. Checking next file...\n";
		}	
	}
}
else {
	print "You did not provide any files to check for.\nTry again, and pass a list of files seperated by spaces to the command.\nLike so: ./file-test-c.pl testfile.txt test2.txt\n";
}
$o_time = localtime $o_time;
print "$o_name is the oldest file in your list.\nIt was modified: $o_time\n";