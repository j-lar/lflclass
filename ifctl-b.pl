#!/usr/bin/perl
print "Please enter a number or letter\n";
chomp($input_1 = <STDIN>);
print "Please enter another number or letter\n";
chomp($input_2 = <STDIN>);
if($input_1+0 ne $input_1 && $input_2+0 ne $input_2)
 {
  $input_1 = uc($input_1);
  $input_2 = uc($input_2);
  if($input_1 le $input_2)
   {
    print "$input_1 comes before $input_2\n";
   }
  else
   {
    print "$input_2 comes before $input_1\n";
   }
 }
elsif($input_1+0 eq $input_1 && $input_2+0 eq $input_2)
 {
  if($input_1 < $input_2)
   {
    print "$input_1 is less than $input_2\n";
   }
  else
   {
    print "$input_2 less than $input_1\n";
   }
 }
else
 {
  print "Sorry, we can't compare integers and strings.\n"
 }

