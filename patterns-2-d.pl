#!/usr/bin/perl

#Change exercise C so that it will still find doggone, but will also now find boondogle.

use warnings;
use strict;

print `clear`;
print "Enter a word that contains the letters d-o-g.\nJust the word dog won't be accepted.\nOr type quit to, well, quit.\n";
while (1) {
	$_ = <>;
	if (/quit/) {
		print "OK, goodbye!\n";
		last;
	}
	if (/.*dog\w+/) {
		print "Yep. That word contains the letters d-o-g.\n";
		last;
	}
	elsif (/\bdog\s+/){
		print "That's just the word 'dog', not what we're looking for...\n";
		redo;
	}
	else {
		print "That word does not contain the letters d-o-g, try again.\n";
		redo;
	}
}
