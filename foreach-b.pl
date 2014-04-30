#!/usr/bin/perl

#Alter the above program to ask the user for the animals to place into the array.
#Accept the user's input and place these animals into an array.
#When the user enters "quit" stop building the array.
#Then go through the array and print the animals that were put into the array.
print `clear`;
print "Please enter the names of some zoo animals. Type 'quit' when done\n";
while($input ne 'quit')
 {
  chomp($input = <STDIN>);
  push @animals, $input;
 }
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
foreach $animal(@animals)
 {
# add logic here to use a/an depending on the animal  
  print "\ta $animal\n";
 }