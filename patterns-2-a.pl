#!/usr/bin/perl

#Write a program using the "happy birthday" string again. The pattern match
#should look for two strings separated by a whitespace. Print a statement that
#you found the string when the "if" statement evaluates to TRUE.
print `clear`;
$_ = "happy birthday";
if ( /\w+\s\w+/ ) {
    print "we found two words!\n";
}
