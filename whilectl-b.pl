#!/usr/bin/perl
# ask for two numbers and assign to variables
print "input a number, please.\n";
chomp( $input_1 = <STDIN> );
print "input another number, please.\n";
chomp( $input_2 = <STDIN> );

# loop over the previously assigned variables
# and and add one to the first until it is greater
while ( $input_1 < $input_2 ) {
    print "First input is less than second input, adding 1.\n";
    $input_1 += 1;
    print "First input is now adjusted to $input_1\n";
}
print "First input is now equal to second input! We are done.\n";
