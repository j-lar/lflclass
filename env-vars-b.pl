#!/usr/bin/perl
use warnings;
use strict;
system("clear");

#Write a program that will print out the value of the USER variable
#and the HOME variable of the ENV hash.

print "User -- $ENV{'USER'}\n";
print "Home -- $ENV{'HOME'}\n";