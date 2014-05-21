#!/usr/bin/perl

#Write a program that defines a string "pine pine". Create a match pattern
#using back references that searches for double words. HINT: Use memory
#parentheses. Include a print statement inside the "if" body stating that
#the second "pine" was found.

use strict;
use warnings;

$_ = "pine pine";

if ( /(\bpine\b)\s\1/ ) {
	print "Double pine!\n";
}