#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Write a program using a directory handle. Read your home directory, and if an entry is a
#subdirectory, then open that directory and read its contents and print those names. If
#the entry is a file, simply print out the file name. 

my $entry;
my $sub_entry;
my $dir = "/home/jlarsen";
opendir DIR, $dir or die "Can't open $dir: $!";
foreach $entry (readdir DIR) {
	if ( -d $entry ) {
		opendir SUB, $entry or die "Can't open $entry: $!";
		foreach $sub_entry (readdir SUB) {
			print "$entry/$sub_entry\n";
		}
	}
	elsif ( -f $entry ) {
		print "$dir/$entry\n";
	}
}