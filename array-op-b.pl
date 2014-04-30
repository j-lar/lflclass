#!/usr/bin/perl

print `clear`;
print "Please enter your last name\n";
chomp($input = <STDIN>);
unshift @name, $input;
print "Please enter your first name\n";
chomp($input = <STDIN>);
unshift @name, $input;
print "Please enter your last name\n";
chomp($input = <STDIN>);
unshift @name, $input;

$m_name = shift @name;
$f_name = shift @name;
$l_name = shift @name;

print "\nHello $f_name $m_name $l_name!\n";