#!/usr/bin/perl
print "Please enter a number\n";
chomp($num_1 = <STDIN>);
print "Please enter another number\n";
chomp($num_2 = <STDIN>);
if($num_1 < $letter_2)
 {
  print "$num_1 comes before $num_2\n";
 } 
else
 {
  print "$num_2 comes before $num_1\n";
 }
