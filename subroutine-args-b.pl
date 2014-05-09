#!/usr/bin/perl

#Write a Perl program that includes a subroutine requiring five
#arguments. In the subroutine, loop enough times to print out
#each of the arguments from within the body of the loop.

sub five_sub {
	foreach(@_) {
		print "$_\n";
	}
}

&five_sub(1, 2, 3, 4, 5);