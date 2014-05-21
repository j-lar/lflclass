#!/usr/bin/perl

#Alter exercise A to print out a statement stating what was found by the
#pattern match; use match variables. 

use strict;
use warnings;

$_ = "pine pine";

if ( /(\bpine\b)\s\1/ ) {
        print "Looks like we got two of these: --$1--\n";
}