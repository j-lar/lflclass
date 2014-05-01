#!/usr/bin/perl
$coin1 = "nickel";
$coin2 = "dime";

if (   ( ( $coin1 eq "nickel" ) || ( $coin2 eq "nickel" ) )
    && ( ( $coin1 eq "quarter" ) || ( $coin2 eq "quarter" ) ) )
{
    print "You have a $coin1 and a $coin2\n";
}

if ( ( $coin2 eq "dime" ) || ( $coin2 eq "quarter" ) ) {
    print "You have a $coin2!\n";
}
