#!/usr/bin/perl

# This is just a basic script for messing around with hashes

%hash = (
    "fname"        => "Jon",
    "lname"        => "Larsen",
    "street"       => "389 S. 2nd Ave",
    "city"         => "Walla Walla",
    "state"        => "WA",
    "zip"          => "99362",
    "mobile_phone" => "206-678-4354",
    "home_phone"   => "509-730-5527",
);
@key_list   = keys %hash;
@value_list = values %hash;
@each_list  = each %hash;
print "This is the list of keys: @key_list\n";
print "This is the list of values: @value_list\n";
print "-------\n";
print "Here is a list of each key and value:\n";
while ( ( $key, $value ) = each %hash ) {
    print "$key:\t\t$value\n";
}
print "-------\n";
print "Enter a key name to check for\n";
chomp($test = <STDIN>);
if ( exists $hash{$test} ) {
    print "Yes, the there is a key named $test\n";
}
else {
	print "Nope, no key by that name here.\n";
	print "Would you like to add it? y/n\n";
	chomp($q = <STDIN>);
	if ($q eq "n" || $q eq "no") {
		print "Okay, goodbye.\n";
	}
	elsif ($q eq "y" || $q eq "yes") {
		print "Sorry, I don't know how to do that yet\n";
	}
	# make this go back to the beginning if the answer isn't yes or no.
	else {
		print "I don't know what to do with that answer. Goodbye.\n";
	}
}


