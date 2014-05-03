#!/usr/bin/perl

#Write a program in which a subroutine is called with three arguments.
#Call the subroutine and print the arguments that were passed from
#the main part of the program.

#Add ability to take user input of insults
#then spit insults back out, ending with "An awesome human being
#add logic to use a/an depending on the first letter

sub new_sub {
	print "You are $_[0]\n";
	print "And $_[1]\n";
	print "And what's more, $_[2]!\n";
}

&new_sub("An Idiot", "A Loser", "An awesome human being");