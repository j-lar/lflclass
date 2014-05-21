#!/usr/bin/perl
use strict;
use warnings;
print `clear`;

#Alter exercise A  to accept input from the user. Ask the user to input several values. Continue
#to accept keyboard input until the user enters "quit". Then take these strings, capitalize the first
#letter of each word, replace the whitespace with a "+" character, split them into separate strings,
#sort them into alphabetical order, then print each input line on a separate line. You can process
#each input line on its own; you don't have to place ALL of the input into a single string before
#processing it. However, try to use inputs that contain more than a single word - it adds to the challenge.

my @input_array;
my $sorted;
while (<>) {
	chomp;
	if ($_ eq lc "quit") {
		last;
	}
	$_ =~ s/\s+/+/g;
	push @input_array, split /\+/, $_;
}


@input_array = sort @input_array;
print `clear`;

foreach $sorted (@input_array) {
	$sorted =~ s/(\w+)/\u\L$1/i;
	print "$sorted\n";
}
