#!/usr/bin/perl

#Write a program that includes a string with the value "happy birthday".
#Write an "if" statement with a pattern match as the controlling statement.
#The pattern should look for "birth" - just those five characters.

print `clear`;

$string = "happy birthday";
if ($string =~ /birth/) {
	print "Found it!\n";
}