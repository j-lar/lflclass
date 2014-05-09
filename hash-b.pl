#!/usr/bin/perl
#Alter exercise A with the following changes:
#1) Call a subroutine called input() to print the requests and accept the input
#2) Within this subroutine use "my" variables for the input entered by the user
#3) Accept input until the user enters "Done" in response to the month request. Use the same print_out() subroutine to print the results.
#(BONUS) For the brave of heart - figure out a method using the second program to print out the months
#(and print the holidays as well) in order they were input. Hint: Don't use the month as the key...also think about accepting the month and holiday as a single input.

sub input {
    my $count = 0;
	while ( ) {
		print "Please enter a month of the year, or \"Done\" if finished.\n";
        chomp( my $month = <STDIN> );
        if ( lc $month eq "done" ) {
            last;
        }
        else {
            print "Ok, thanks! Now enter the name of a holiday that occurs in that month.\n";
            chomp( my $holiday = <STDIN> );
            $holiday_hash{$count} = "$month: $holiday";
        }
		$count++;
    }
}

sub print_out {
    print `clear`;
    print "Here are your months and Holidays:\n\n";
    foreach $key ( sort keys %holiday_hash ) {
        print "$holiday_hash{$key}\n";
    }
    print "\n";
}
input();
print_out(%holiday_hash);
