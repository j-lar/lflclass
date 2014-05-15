#!/usr/bin/perl

#Modify the exercise A to match on "happ" followed by another
#character. HINT: Think about the special characters discussed.

print `clear`;

$string = "happy birthday";
if ($string =~ /happ./) {
	print "Found it!\n";
}