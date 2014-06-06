#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Write a program that will use a "fork" call. The new process is to exec the "ls -lR /usr/local" system command.

my $dir_path = "/usr/local";
my $cmd = "ls -lR $dir_path";

defined(my $pid = fork) or die "Could not fork: $!\n";

unless ( $pid ) {
	exec $cmd;
	die "Could not exec: $!\n";
}

waitpid($pid, 0);