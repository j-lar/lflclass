#!/usr/bin/perl
print "Please enter a letter of the alphabet\n";
chomp($letter_1 = <STDIN>);
$letter_1 = uc($letter_1);
print "Please enter another letter of the alphabet\n";
chomp($letter_2 = <STDIN>);
$letter_2 = uc($letter_2);
if($letter_1 lt $letter_2)
 {
  print "$letter_1 comes before $letter_2\n";
 }
else
 {
  print "$letter_2 comes before $letter_1\n";
 }
