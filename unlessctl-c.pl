#!/usr/local/bin/perl

$hard_name = "Joel";
print "Please type your name\n";
chomp($input_name = <STDIN>);
unless($hard_name eq $input_name)
 {
  print "Your name doesn't match. The cake is a lie!\n"
 }
else 
 {
  print "Your name matches, have some cake!\n"
 }