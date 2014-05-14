#!/usr/bin/perl

#Write a simple program that asks for and accepts a series of input lines (use CONTROL-D to signal
#that the input is complete) and write it back to the screen. Add some text to the output, such as:
#"The input was: <WHATEVER YOU ENTER>". You will need to read the input into an array so you are able
#to enter more than a single line. Display the output with a single print statement.

print `clear`;
print "Please enter some some lines of input. Press CONTROL-D when done.\n";
while (<>) {
	chomp;
	push @input, $_;
}

print "-------\n";

for ($i = 0; $i <= $#input; $i++) {
	print "Input was: $input[$i]\n";
}

print "-------\n";
