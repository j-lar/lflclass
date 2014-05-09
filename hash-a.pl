#!/usr/bin/perl
#Write a program that will ask a user to input five responses.
#Prompt the user for a month, then prompt for a holiday that occurs
#in that month (it's easiest to use two print and input statements).
#Create a hash with the values that are entered using the name of
#the month as the key and the holiday as the value, then call a
#subroutine called print_out() ;passing the hash as an argument. Within
#the subroutine, print out all five months and the associated holidays.

$count = 0;
while ( $count < 5 ) {
    print "Please enter a month of the year.\n";
    chomp( $month = <STDIN> );

    #need to check to see if the month has been previously used...
    #hashes don't work that way.
    print
"Ok, thanks! Now enter the name of a holiday that occurs in that month.\n";
    chomp( $holiday = <STDIN> );
    $holiday_hash{$month} = $holiday;
    $count++;
}

print `clear`;
print "Here are your months and Holidays:\n\n";

sub print_out {
    while ( ( $key, $value ) = each %holiday_hash ) {
        print "$key\: $value\n";
    }
}
print_out(%holiday_hash);
