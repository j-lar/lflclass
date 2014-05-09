#!/usr/bin/perl
#Write a program that will ask a user to input five responses.
#Prompt the user for a month, then prompt for a holiday that occurs
#in that month (it's easiest to use two print and input statements).
#Create a hash with the values that are entered using the name of
#the month as the key and the holiday as the value, then call a
#subroutine called print_out() ;passing the hash as an argument. Within
#the subroutine, print out all five months and the associated holidays.

for ( my $count = 0 ; $count < 5 ; $count++ ) {
    print "Please enter a month of the year.\n";
    chomp( $month = <STDIN> );

    #need to check to see if the month has been previously used...
    #would be cool to append to the month name if it's a duplicate, and
    #then strip off the appended character when printing it back out.
    #later...
    if ( exists $holiday_hash{$month} ) {
        print "Sorry! I can only do one holiday per month. Hashes, eh?!\n";
        redo;
    }
    else {
        print "Ok, thanks! Now enter the name of a holiday that occurs in that month.\n";
        chomp( $holiday = <STDIN> );
        $holiday_hash{$month} = $holiday;
    }
}

sub print_out {
    print `clear`;
    print "Here are your months and Holidays:\n\n";
    while ( ( $key, $value ) = each %holiday_hash ) {
        print "$key\: $value\n";
    }
    print "\n";
}
print_out(%holiday_hash);
