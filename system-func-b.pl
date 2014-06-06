#!/usr/bin/perl
use warnings;
use strict;
system("clear");

 #Alter exercise A to use the exec function to issue the "date" command (use the die
 #function to print a message containing the error if the command fails).
 
 exec("date");
 die "Could not issue command through exec: $!";