#!/usr/bin/perl

$clear_screen = `clear`;

print "Please enter a name.\n";
chomp($name = <STDIN>);
print "How many guesses should we allow?\n";
chomp($num_guesses = <STDIN>);
print $clear_screen;
for($count = 1; $count <= $num_guesses; $count++)
 {
  print "Guess the name!\n";
  chomp($guess = <STDIN>);
  if(uc$guess eq uc$name)
   {
    print "You got it!\n";
    last
   }
  print "Wrong!\n";
 }
print "The answer was \U$name.\n";
print "Your last guess was \U$guess.\n";
print "Game over.\n";