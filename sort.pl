#!/usr/bin/perl

# Write a program that defines an array of at least five zoo animals
# (use the previous programming exercise to save some time).
# Sort the array, assigning it to a new array.
# Using a foreach statement, print the sorted list of animals in the zoo. 

print `clear`;
print "Please enter the names of some zoo animals. Type 'quit' when done\n";
while($input ne lc'quit')
 {
  chomp($input = <STDIN>);
  push @animals, $input;
 }
pop @animals;
$count = @animals;
if($count <= 3)
 {
  print "You didn't see very many animals, did you?\n You saw:\n";
 }
elsif($count >= 10)
 {
  print "WOW! That's a lot of animals!\n You saw:\n";
 }
else
 {
  print "Ok, that's a good list. You saw:\n";
 }

@animals = sort @animals;
# maybe uppercase the first letter of each animal?
($last) = @animals[-1]; # does it matter if this is inside the foreach loop?

foreach $animal(@animals)
 {
  if($animal ne $last)
   {
    if($animal =~ /^[aeiou]/i )
    {
     print "\tAn $animal\n";
    }
   else
    {
     print "\tA $animal\n";
    }
   }
  elsif($animal =~ /^[aeiou]/i )
   {
    print "\tAnd an $animal\n";
   }
  else
   {
    print "\tAnd a $animal\n";
   }
  }