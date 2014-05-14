#!/usr/bin/perl

#Alter exercise A to use a loop to print out EACH line of input
#separately. Break each entry out of the array and print it within the loop.

print `clear`;
print "Please enter some some lines of input. Press CONTROL-D when done.\n";
while (<>) {
    chomp;
    push @input, $_;
}

print "-------\n";

for ( $i = 0 ; $i <= $#input ; $i++ ) {
    print "Input was: $input[$i]\n";
}

print "-------\n";