#!/usr/bin/perl

#Modify the string value to have a tab character instead of a space between
#"happy" and "birthday". Change the pattern match to look for "happy\t" -
#that is the word happy followed by a tab character. 

print `clear`;

$string = "happy\tbirthday";
if ($string =~ /happy\t/) {
	print "Found it!\n";
}