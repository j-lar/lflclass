#!/usr/bin/perl

#Use the same concept as above - BUT - now print out each of the 5 lines backwards...so that the last word is first etc....
#HINT: Remember that the reverse operator only works on arrays - so you must convert each line into an array. 

print `clear`;
print "-------\n";
while ( <> ) {
	chomp;
	push @lines, $_;
}
for ( my $i = 0; $i <= $#lines; $i++) {
	#how can I reinsert a space between words?
	print join(" ", reverse(split(/ /, @lines[$i])));
#	push (@each_line, split(/ /, @lines[$i]));
#	print reverse(@each_line);
	print "\n";
}
#print @lines;
print "-------\n";