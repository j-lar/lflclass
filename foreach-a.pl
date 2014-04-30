#!/usr/bin/perl

#Now let's put all this good stuff together.
#Write a program that defines an array of at least five zoo animals.
#Using a foreach statement, print the name of the animals you saw at the zoo today.

@animals = qw/ elephant lion tiger bear jackalope /;
foreach $animal(@animals)
 {
  print "\t$animal\n";
 }