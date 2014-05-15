#!/usr/bin/perl

#Using exercise B, edit it to:
#1) Print a ruler line of digits so you can determine if the output is correct
#2) Print each output line right justified to column 25

print `clear`;
print "Please enter some some lines of input. Press CONTROL-D when done.\n";
chomp(@input=<STDIN>);

print "12345678901234567890123456789012345678901234567890\n";

foreach (@input) {
    my $format = "The input was:" . "%25s\n";
	printf $format, $_;
}

print "-------\n";