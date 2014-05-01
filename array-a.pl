#!/usr/bin/perl
$ordinal[0] = "first";
$ordinal[1] = "second";
$ordinal[2] = "third";
$ordinal[3] = "fourth";
$ordinal[4] = "fifth";
$ordinal[5] = "sixth";
$ordinal[6] = "seventh";

# Loop to print instructions to enter 1st - 7th day of the week and
# assign them to an array
for ( $input = 0 ; $input < 7 ; $input++ ) {
    print "Enter the name of the $ordinal[$input] day of the week\n";
    chomp( $day[$input] = <STDIN> );
}

print "Thanks! Now I'll print them back for you.\n";
for ( $count = 0 ; $count < 7 ; $count++ )

  # Loop to print the days of the week as entered
{
    print "$day[$count]\n";
}
