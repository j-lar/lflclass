#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Write a program that uses the system function to issue the "ls" command. Then alter this
#program to use the exec function to issue the "ls" command (use the die function to print
#a message containing the error if the command fails).

system("ls");

exec("ls3");
die "exec failed: $!";