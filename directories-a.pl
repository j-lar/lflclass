#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Write a program that will, using the glob operator, list all of the files
#that begin with the letter "a". Print each file name to the monitor.

my @a_files = <a*>;
my $file_count = $#a_files + 1;
print "There are $file_count files that start with a\n";
for ( my $i = 0; $i <= $#a_files; $i++) {
	print "$a_files[$i]\n";
}