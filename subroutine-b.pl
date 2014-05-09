#!/usr/bin/perl

#Write a program that calls a subroutine which returns a value of 10.
#From the main program print the return value.

sub this_is_stupid {
    5 + 5;
}
$return = &this_is_stupid();
print "$return\n";
