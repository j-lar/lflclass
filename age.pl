#!/usr/bin/perl
print "Please enter your birth year: ";
chomp($birth_year = <STDIN>);
print "Please enter the current year: ";
chomp($current_year = <STDIN>);
$age = $current_year - $birth_year;
$future_age = $age + 15;
print "\nYour current age is $age.\n";
print "In 15 years you will be $future_age.\n";
