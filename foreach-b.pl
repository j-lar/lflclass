#!/usr/bin/perl

#Alter the above program to ask the user for the animals to place into the array.
#Accept the user's input and place these animals into an array.
#When the user enters "quit" stop building the array.
#Then go through the array and print the animals that were put into the array.
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
($last) = @animals[-1];
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