#!/usr/bin/perl
print `clear`;
print "\n-------\n";
while ( <> ) {
	print "INVOICE: #$_";
	chomp ($input = <>);
	print "Name: $input\n";
	while ( <> ) {
		chomp;
		if ( $_ eq "" ) {
			last
		}
		@item = split ( /:/ );
		$total = ($item[1] * $item[2]);
		print "Item: $item[0] - Number ordered: $item[1]\n";
		print "Cost per item: \$$item[2] - Total cost: \$$total\n";
	}
	print "-------\n";
}
print "\n";