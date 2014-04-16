#!/usr/bin/perl

print "Please enter a number for me to count to.\n";
for(chomp($input = <STDIN>);$input+0 ne $input;chomp($input = <STDIN>))
 {
  print "-------\n";
  print "You entered $input.\n";
  print "That's not a number, silly. Try again.\n";
  print "-------\n";
 }
print "-------\n";
print "You entered $input. I will now show you how to count to $input\n";
print "-------\n";
 for($count = 1; $count < $input+1; $count++) ## could this be ($count = 1; $count <= $input; $count++) ??
 {
  print "$count\n";
 }
print "-------\n";
