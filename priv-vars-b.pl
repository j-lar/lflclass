#!/usr/bin/perl

#Altering the private variables exercise A, use the return statement in the subroutine.
#Have the variable containing the sum of the addition be declared using the "my" operator.
#Return the value of the sum of the addition. Print out the return value (the sum) in
#the main part of the program. 

sub add_five {
    my ( $first, $second, $third, $fourth, $fifth );
    ( $first, $second, $third, $fourth, $fifth ) = @_;
    $result = $first + $second + $third + $fourth + $fifth;
	return $result;
}

&add_five( 1, 4, 8, 22, 3 );
print "That adds up to $result\n";