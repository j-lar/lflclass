#!/usr/bin/perl
print "Please enter your first name: ";
chomp($fname = <STDIN>);
print "Please enter your last name: ";
chomp($lname = <STDIN>);
print "Please enter your street address: ";
chomp($street_addr = <STDIN>);
print "Please enter your city: ";
chomp($city = <STDIN>);
print "Please enter your state: ";
chomp($state = <STDIN>);
print "Please enter your zip code: ";
chomp($zip = <STDIN>);

print "\n$fname $lname\n$street_addr\n$city, $state $zip\n\n"
