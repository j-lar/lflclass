#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Write a program that will change the permissions of one of your existing files to 0777

my $working_dir = "/home/jlarsen";
my $file = "mno";
opendir OPP, $working_dir or die "Could not open $working_dir: $!";
chmod 0777, $file or die "Could not change permissions on $working_dir: $!";