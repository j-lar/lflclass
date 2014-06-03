#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Write a program that creates a directory in the junk directory (the junk subdirectory is located in your home directory).
#This new directory should be called test. Using the Perl system call issue an "ls -lR junk" from within the program -
#this should show the junk directory and all subdirectories. Have this program remove the test subdirectory, the tmp
#subdirectory, as well as the junk directory. Remember that directories MUST be empty before they can be removed. Then
#check to ensure that the junk directory no longer exists.

my $home_dir = "/home/jlarsen";
my $junk_dir = "$home_dir/junk";
my $sub_test = "test";
my $sub_tmp = "tmp";

mkdir "$junk_dir/$sub_test" or die "Fail. $!";
system("ls -lR $junk_dir");

#this works, but should be more dynamic...
chdir $junk_dir;
unlink glob "*";
chdir $sub_test;
unlink glob "*";
chdir "$junk_dir";
rmdir $sub_test;
chdir $sub_tmp;
unlink glob "*";
chdir "$junk_dir";
rmdir $sub_tmp;
chdir $home_dir;
rmdir $junk_dir;

if ( -e $junk_dir ) {
	print "$junk_dir still exists, something went wrong...\n";
}

else {
	print "$junk_dir no longer exists.\n";
}