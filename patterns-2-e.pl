#!/usr/bin/perl

#Change exercise D so that it will  find the simple word dog - as well as doggone, and boondogle.

use warnings;
use strict;

print `clear`;
print "Enter a word that contains the letters d-o-g.\nOr type quit to, well, quit.\n";
while (1) {
	$_ = <>;
	if (/quit/) {
		print "OK, goodbye!\n";
		last;
	}
	elsif (/.*?dog.*/) {
		print "Yep. That word contains the letters d-o-g.\n";
		last;
	}
	else {
		print "That word does not contain the letters d-o-g, try again.\n";
		redo;
	}
}
