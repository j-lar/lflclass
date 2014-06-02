#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#There is an existing file named "temp" in your home directory. Write a program that...
#1) renames the "temp" file to "abc"
#2) creates a link to the file "abc" called "mno"
#After the program runs check for the existence of the files "abc" and "mno"

my $old = "/home/jlarsen/temp";
my $new = "/home/jlarsen/abc";
my $link = "/home/jlarsen/mno";

rename $old, $new;
link $new, $link;

if ( -e $new ) {
	print "Successfully renamed $old to $new\n";
}

else {
	print "$old does not exists, could not rename it.";
}

if ( -e $link ) {
	print "Successfully linked $link to $new\n";
}

else {
	print "Could not link $link to $new. $new does not exist.";
}