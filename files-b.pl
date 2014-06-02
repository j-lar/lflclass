#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#Alter exercise A to include file tests for the existence of a filename prior to renaming and linking as well as when removing files.

#There is a file named "xyz" in your home directory, write a program to rename this to a file named "abc". Check to insure that file
#"abc" doesn't exist prior to renaming "xyz". If the "abc" file does exist print a message stating that the file exists and ask if
#the user wants to overwrite it. If the answer is 'no', 'No', or 'NO' - then exit the program. Otherwise overwrite the existing "abc" file.

#Create a link to "abc" called "mno". Again check for the existence of "mno" prior to creating the link. If "mno" exists, ask the user
#to specify a new file name - don't worry about checking for the existence of the new file name, assume it doesn't exist. After the
#program runs to completion, verify it worked correctly by checking for the files "abc" and "mno".

my $new_file = "/home/jlarsen/abc";
my $old_file = "/home/jlarsen/xyz";
my $link = "/home/jlarsen/mno";
my $rename;

if ( -e $new_file ) {
	print "$new_file already exists, would you like to overwrite it? (yes or no)\n";
	chomp ( $rename = <STDIN> );
	if ( lc $rename eq "no" ) {
		exit;
	}
}

rename $old_file, $new_file;

if ( -e $link ) {
	print "$link already exists. Please enter a new name\n";
	chomp ( $link = <STDIN> );
}

link $new_file, $link;

if ( -e $new_file ) {
	print "Successfully renamed $old_file to $new_file\n";
}

else {
	print "Failed to rename $old_file to $new_file";
}

if ( -e $link ) {
	print "Successfully linked $link to $new_file\n";
}

else {
	print "Failed to link $link to $new_file";
}