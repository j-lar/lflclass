#!/usr/local/bin/perl

$hard_name = "Joel";
print "Please type your name\n";
chomp($input_name = <STDIN>);
if($hard_name eq $input_name)
 {
  print "Your name matches, have some cake!\n"
 }
else
 {
  print "Your name doesn't match. The cake is a lie!\n"
 }
