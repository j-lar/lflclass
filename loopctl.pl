#!/usr/bin/perl

print "Please enter a name.\n";
chomp($name = <STDIN>);
print "How many guesses should we allow?\n";
chomp($num_guesses = <STDIN>);
for($count = 1; $count <= $num_guesses; $count++)
 {
  print "Guess the name!\n";
  chomp($guess = <STDIN>);
  if($guess eq $name)
   {
    print "You got it!\n";
    last
   }
  print "Wrong!\n";
 }
print "The answer was $name.\n";
print "Your last guess was $guess.\n";
print "Game over.\n";