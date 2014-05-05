#!/usr/bin/perl

#Write a program containing a subroutine that takes five numerical arguments
#and adds them together, then print out the result of that addition.

sub add_five {
    my ( $first, $second, $third, $fourth, $fifth );
    ( $first, $second, $third, $fourth, $fifth ) = @_;
    my $result = $first + $second + $third + $fourth + $fifth;
	print "$result\n";
}

&add_five( 1, 4, 8, 22, 3 );
