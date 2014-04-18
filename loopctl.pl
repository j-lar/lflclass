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
  if($guess eq "")
   {
     print "You entered nothing. ";
	 redo;
   }
  elsif(lc$guess eq "next")
   {
    print "Ok, let's start over.\n";
	print "Please enter a name.\n";
    chomp($name = <STDIN>);
    print "How many guesses should we allow?\n";
    chomp($num_guesses = <STDIN>);
	print $clear_screen;
	redo;
   }
  elsif(lc$guess eq "quit")
   {
    print "Ok, goodbye then\n";
    last
   }
  elsif(uc$guess eq uc$name)
   {
    print "You got it!\n";
	last
   }
  print "Wrong!\n";
 }
print "-------\n";
print "The answer was \U$name.\n";
print "-------\n";
print "Game over.\n";