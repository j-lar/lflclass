#!/usr/bin/perl

print "Please enter your first name\n";
chomp($name[0] = <STDIN>);
print "Please enter your middle name\n";
chomp($name[1] = <STDIN>);
print "Please enter your last name\n";
chomp($name[2] = <STDIN>);

($first, $middle, $last) = @name;
print "\n$last, $first $middle\n";