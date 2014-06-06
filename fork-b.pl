#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Write a program that will fork a child process. From the child process print out
#the statement: "From within the child process.". In the parent process print out
#the statement: "From within the parent process.". 

my $parent_str = "From within the parent process\n";
my $child_str = "From within the child process\n";

defined( my $pid = fork ) or die "Could not fork: $!\n";

unless ( $pid ) {
	print $child_str;
	exit;
}
waitpid ($pid, 0);

print $parent_str;
