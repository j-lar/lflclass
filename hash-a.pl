#!/usr/bin/perl
#Write a program that will ask a user to input five responses.
#Prompt the user for a month, then prompt for a holiday that occurs
#in that month (it's easiest to use two print and input statements).
#Create a hash with the values that are entered using the name of
#the month as the key and the holiday as the value, then call a
#subroutine called print_out() ;passing the hash as an argument. Within
#the subroutine, print out all five months and the associated holidays.

@hash_array = ();

while ($#hash_array <= 3) {
	print "Please enter a month of the year.\n";
    chomp($month = <STDIN>);
    print "Ok, thanks! Now enter the name of a holidy that occurs in that month.\n";
    chomp($holiday = <STDIN>);
#we could just add things to the hash right here, it's more simple that way
#but we haven't been shown how to do that yet...
#    $holiday_hash{ $month } = $holiday;
	unshift (@hash_array, $holiday);
	unshift (@hash_array, $month);
}

for($i = 0; $i <= $#hash_array; $i+=2) {
#if we use this way, it's the same as what I proposed above... so how do we 
#do it the way they are expecting?
	$holiday_hash{ $hash_array[$i] } = $hash_array[$i+1];
}

print "\n";

sub print_out {
    while(($key, $value) = each %holiday_hash) {
        print "$key\: $value\n";
    }
}
print_out(%holiday_hash);
