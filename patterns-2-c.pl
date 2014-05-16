#!/usr/bin/perl

#Write a program that will match input that contains the three
#letters "dog" at the beginning of a word, such as doggone,
#dogging, but NOT boondogle or even dog.

use strict;
use warnings;

print `clear`;
print "Enter a word that starts with the letters d-o-g.\nJust the word dog won't be accepted.\n Or type quit to, well, quit.\n";
while (1) {
	$_ = <>;
	if (/quit/) {
		print "OK, goodbye!\n";
		last;
	}
	if (/\bdog\w+/) {
		print "Yep. That word starts with dog.\n";
		last;
	}
	elsif (/\bdog\s+/){
		print "That's just the word 'dog', not what we're looking for...\n";
		redo;
	}
	else {
		print "That's not a word that starts with dog, try again.\n";
		redo;
	}
}
	