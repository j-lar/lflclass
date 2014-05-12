#!/usr/bin/perl

#There is a file in the home directory named reverse.txt. Write a program that will read it using
#the diamond operator. It simply contains 5 lines of code. The program will read in the entire file,
#then print out each line in reverse order...so that the 5th line is printed first and the 4th line
#is printed second, etc.

print `clear`;
print "-------\n";
my @lines;
while ( <> ) {
	push (@lines, $_);
}
print reverse(@lines);
print "-------\n";