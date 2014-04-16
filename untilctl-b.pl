#!/usr/bin/perl
print "Enter a number\n";
chomp($input_1 = <STDIN>);
print "Enter a second number\n";
chomp($input_2 = <STDIN>);
until($input_1 > $input_2)
 {
  $input_1++;
 }
print "-------\n";
print "$input_1\n";
