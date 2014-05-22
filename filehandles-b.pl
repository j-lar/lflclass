#!/usr/bin/perl
use warnings;
use strict;
print `clear`;

#alter exercise A - have it prompt the user to enter his/her name and address information in the format:
#Name
#Street Address
#City
#State
#instead of reading a file. Then write this information to a file named "address".

my $name;
my $street;
my $city;
my $state;
my $file = "address2.txt";

print "Please enter your first and last names.\n";
chomp($name = <STDIN>);
print "Please enter your Street Address.\n";
chomp($street = <STDIN>);
print "Please enter your city.\n";
chomp($city = <STDIN>);
print "Please enter your state.\n";
chomp($state = <STDIN>);

open DATA, ">>$file"
	or die "Could not open $file: $!";
print DATA "$name\n$street\n$city\n$state\n";
print "Thank you. Your information has been written to the file $file\n";