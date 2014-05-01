#!/usr/bin/perl
print "Please enter a number or letter\n";
chomp( $input_1 = <STDIN> );
print "Please enter another number or letter\n";
chomp( $input_2 = <STDIN> );
if ( $input_1 + 0 eq $input_1 && $input_2 + 0 eq $input_2 ) {
    $int = 'int';
}
elsif ( $input_1 + 0 ne $input_1 && $input_2 + 0 ne $input_2 ) {
    $int = 'string';
}
else {
    $int = 'both';
}
unless ( !( $int eq 'both' ) ) {
    print "Sorry, we can't compare integers and strings.\n";
}
else {
    if ( $int == 'string' ) {
        $input_1 = uc($input_1);
        $input_2 = uc($input_2);
        unless ( $input_2 le $input_1 ) {
            print "$input_1 comes before $input_2\n";
        }
        else {
            print "$input_2 comes before $input_1\n";
        }
    }
    else {
        unless ( $input_2 < $input_1 ) {
            print "$input_1 is less than $input_2\n";
        }
        else {
            print "$input_2 less than $input_1\n";
        }
    }
}
